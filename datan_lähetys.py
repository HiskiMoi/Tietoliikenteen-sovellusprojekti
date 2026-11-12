import asyncio
import mysql.connector
from bleak import BleakClient

# ================= ASETUKSET =================
MAC_ADDRESS = "F5:46:DC:79:69:36"
CHARACTERISTIC_UUID = "00001526-1212-efde-1523-785feabcd123"

DB_CONFIG = {
    'host': '172.20.241.102',
    'user': 'dbaccess_rw',
    'password': 'fasdjkf2389vw2c3k234vk2f3',
    'database': 'measurements'
}
# =============================================
# =============================================

def save_to_mysql(from_mac, val_a, val_b, val_c, val_d, val_e, val_f):
    """
    Tallentaa datan uuden rakenteen mukaiseen rawdata-tauluun.
    """
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor()
        
        # Uusi SQL-kysely
        sql = """INSERT INTO rawdata 
                 (from_mac, sensorvalue_a, sensorvalue_b, sensorvalue_c, sensorvalue_d, sensorvalue_e, sensorvalue_f) 
                 VALUES (%s, %s, %s, %s, %s, %s, %s)"""
        
        val = (from_mac, val_a, val_b, val_c, val_d, val_e, val_f)
        
        cursor.execute(sql, val)
        conn.commit()
        
        cursor.close()
        conn.close()
        print(f"Data tallennettu tietokantaan: {val}")
        
    except mysql.connector.Error as err:
        print(f"Tietokantavirhe: {err}")

def notification_handler(sender, data: bytearray):
    """
    Käsittelee Nordicin alustalta saapuvat BLE-ilmoitukset (notifications).
    """
    try:
        # Puretaan saapunut data tekstiksi
        decoded_data = data.decode('utf-8').strip()
        print(f"Vastaanotettiin BLE-dataa: {decoded_data}")
        
        # OLETUS: Nordic lähettää datan pilkulla eroteltuna, esim: "1.2, 3.4, 5.6, 7.8, 9.0, tekstiä"
        # Pilkotaan data osiin. Joudut ehkä muuttamaan tätä sen mukaan, miten Nordic oikeasti datan lähettää!
        parts = decoded_data.split(',')
        
        # Varmistetaan, että saatiin vähintään 6 arvoa
        if len(parts) >= 6:
            val_a = float(parts[0].strip())
            val_b = float(parts[1].strip())
            val_c = float(parts[2].strip())
            val_d = float(parts[3].strip())
            val_e = float(parts[4].strip())
            val_f = parts[5].strip()
        else:
            # Jos data ei ole pilkottavissa nätisti, laitetaan nolliin ja viedään raakadata f-sarakkeeseen
            val_a = val_b = val_c = val_d = val_e = 0.0
            val_f = decoded_data
            
        # Lähetetään tietokantaan (lähettäjänä Nordicin MAC)
        save_to_mysql(MAC_ADDRESS, val_a, val_b, val_c, val_d, val_e, val_f)
        
    except Exception as e:
        print(f"Virhe datan käsittelyssä: {e}")

async def main():
    print(f"Yhdistetään laitteeseen {MAC_ADDRESS}...")
    
    async with BleakClient(MAC_ADDRESS) as client:
        if client.is_connected:
            print("Yhdistetty onnistuneesti Nordicin alustaan!")
            
            await client.start_notify(CHARACTERISTIC_UUID, notification_handler)
            print("Kuunnellaan dataa. Paina Ctrl+C lopettaaksesi ohjelman.")
            
            while True:
                await asyncio.sleep(1.0)
        else:
            print("Yhdistäminen epäonnistui.")

if __name__ == "__main__":
    try:
        asyncio.run(main())
    except KeyboardInterrupt:
        print("\nOhjelma lopetettu.")