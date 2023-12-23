echo
echo "FINAL SETUP AND CONFIGURATION"


# ------------------------------------------------------------------------

echo
echo "Enabling bluetooth daemon and setting it to auto-start"

sudo sed -i 's|#AutoEnable=false|AutoEnable=true|g' /etc/bluetooth/main.conf
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

# ------------------------------------------------------------------------

echo
echo "Enabling the cups service daemon so we can print"

systemctl enable org.cups.cupsd.service
systemctl start org.cups.cupsd.service

# ------------------------------------------------------------------------
echo
echo "Disabling DHCP and enabling Network Manager daemon"
echo

sudo systemctl disable dhcpcd.service
sudo systemctl stop dhcpcd.service
sudo ip link set dev ${LINK} down
sudo systemctl enable NetworkManager.service
sudo systemctl start NetworkManager.service
sudo ip link set dev ${LINK} up

echo "Done!"
echo 
echo "Reboot now..."
echo
