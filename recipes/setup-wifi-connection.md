# Set up a new wi-fi connection
- `cp /etc/netctl/wifi /etc/netctl/<ssid>`
- `wpa-passphrase <ssid> <password>`
- Copy `psk` value to `/etc/netctl/<ssid>`

# Start a connection
`sudo netctl start <ssid>`

# Start a connection on boot
`sudo systemctl enable netctl@<ssid>`

