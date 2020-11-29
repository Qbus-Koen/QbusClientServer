sudo rm -R ~/QbusOH3    # Verwijderen van oude files
git clone https://github.com/QbusKoen/QbusOH3 ~/QbusOH3    # Downloaden van nieuwe bestanden
sudo rm /usr/share/openhab/addons/org.openhab.binding.qbus-*      # Verwijderen van alle Qbus-JAR files
sudo cp ~/QbusOpenHab/JAR/org.openhab.binding.qbus-3.0.0-SNAPSHOT.jar /usr/share/openhab/addons/    # Kopiëren van huidige JAR naar openHAB
sudo systemctl stop qbusclient.service    # oude client stoppen
sudo systemctl stop qbusserver.service    # oude server stoppen
sudo systemctl start qbusserver.service   # nieuwe server starten
sudo systemctl start qbusclient.service   # nieuwe client starten
sudo systemctl stop openhab              # openHAB stoppen
sudo openhab-cli clean-cache              # cache clearen om eventueel oude JAR's uit de cache te halen
sudo systemctl start openhab             # openHAB starten

