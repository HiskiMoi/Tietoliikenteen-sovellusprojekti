import argparse
import csv
import io
import sys
from pathlib import Path

import requests


URL = "http://172.20.241.102/measurement.php"


def hae_csv(group_id: str, tulostiedosto: Path) -> int:
    """Hakee ryhmän CSV-datan HTTP-rajapinnasta ja tallentaa sen tiedostoon."""
    try:
        response = requests.get(
            URL,
            timeout=30,
        )
        response.raise_for_status()
    except requests.RequestException as e:
        raise RuntimeError(f"HTTP-pyyntö epäonnistui: {e}") from e

    response.encoding = response.apparent_encoding or "utf-8"
    data = response.text.lstrip("\ufeff")

    if not data.strip():
        raise ValueError("Palvelin palautti tyhjän vastauksen.")

    if data.lstrip().lower().startswith(("<!doctype html", "<html")):
        raise ValueError(
            "Palvelin palautti HTML-sivun CSV-datan sijaan. "
            "Tarkista groupid ja rajapinnan vastaus."
        )

    try:
        dialect = csv.Sniffer().sniff(data[:4096], delimiters=",;\t|")
    except csv.Error:
        dialect = csv.excel

    reader = csv.reader(io.StringIO(data, newline=""), dialect)
    rows = list(reader)

    if not rows:
        raise ValueError("Vastauksesta ei löytynyt CSV-rivejä.")

    tulostiedosto.parent.mkdir(parents=True, exist_ok=True)
    with tulostiedosto.open("w", encoding="utf-8-sig", newline="") as file:
        writer = csv.writer(file, dialect=dialect)
        writer.writerows(rows)

    return len(rows)


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Hakee mittausdatan 172.20.241.102-palvelimen measurement.php-rajapinnasta HTTP:n avulla."
    )
    parser.add_argument(
        "--output",
        type=Path,
        help="Tallennustiedosto (oletus: data_group_<groupid>.csv)",
    )
    args = parser.parse_args()

    output = args.output or Path("measurements.csv")

    try:
        rivit = hae_csv("", output)
    except (RuntimeError, ValueError, OSError) as e:
        print(f"Virhe: {e}", file=sys.stderr)
        sys.exit(1)

    print(f"Tallennettiin {rivit} CSV-riviä tiedostoon: {output.resolve()}")


if __name__ == "__main__":
    main()
