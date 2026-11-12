import csv
import os
import re
import sys
from pathlib import Path


def lue_asetukset() -> dict:
    """Lukee tietokantayhteyden asetukset .env-tiedostosta."""
    from dotenv import load_dotenv
    load_dotenv(Path(__file__).with_name(".env"))

    pakolliset = ["DB_NAME", "DB_USER", "DB_PASSWORD", "DB_TABLE"]
    puuttuvat = [nimi for nimi in pakolliset if not os.getenv(nimi)]

    if puuttuvat:
        raise ValueError("Puuttuvat asetukset: " + ", ".join(puuttuvat))

    asetukset = {
        "host": os.getenv("DB_HOST", "172.20.241.102"),
        "port": int(os.getenv("DB_PORT", "3306")),
        "database": os.environ["DB_NAME"],
        "user": os.environ["DB_USER"],
        "password": os.environ["DB_PASSWORD"],
        "table": os.environ["DB_TABLE"],
    }

    if not re.fullmatch(r"[A-Za-z_][A-Za-z0-9_]*", asetukset["table"]):
        raise ValueError("Virheellinen taulun nimi")

    return asetukset


def hae_mysql_csv(tulostiedosto: Path) -> int:
    """Hakee kaikki rawdata-taulun rivit MySQL-tietokannasta CSV-tiedostoon."""
    asetukset = lue_asetukset()

    import mysql.connector

    yhteys = None
    kursori = None
    rivimaara = 0

    try:
        yhteys = mysql.connector.connect(
            host=asetukset["host"],
            port=asetukset["port"],
            database=asetukset["database"],
            user=asetukset["user"],
            password=asetukset["password"],
            connection_timeout=10,
            charset="utf8mb4",
        )

        kursori = yhteys.cursor()
        kysely = f"SELECT * FROM `{asetukset['table']}`"
        kursori.execute(kysely)

        tulostiedosto.parent.mkdir(parents=True, exist_ok=True)

        with tulostiedosto.open("w", encoding="utf-8-sig", newline="") as file:
            writer = csv.writer(file)
            writer.writerow(kursori.column_names)

            while True:
                rivit = kursori.fetchmany(1000)
                if not rivit:
                    break

                writer.writerows(rivit)
                rivimaara += len(rivit)

    finally:
        if kursori is not None:
            kursori.close()
        if yhteys is not None and yhteys.is_connected():
            yhteys.close()

    return rivimaara


def main() -> None:
    import argparse

    parser = argparse.ArgumentParser(
        description="Hakee kaikki rawdata-taulun tiedot CSV-tiedostoon."
    )

    parser.add_argument(
        "--output",
        type=Path,
        default=Path("measurements_rawdata.csv"),
    )

    args = parser.parse_args()

    try:
        rivit = hae_mysql_csv(args.output)
    except Exception as e:
        print(f"Virhe: {e}", file=sys.stderr)
        sys.exit(1)

    print(f"Tallennettiin {rivit} tietokantariviä tiedostoon: {args.output.resolve()}")


if __name__ == "__main__":
    main()