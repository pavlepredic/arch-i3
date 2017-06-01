# Arch linux / i3 window manager
Config files, scripts and cheat-sheets for arch/i3 system

## Network

### Set up a new wi-fi connection
- `cp /etc/netctl/wifi /etc/netctl/<ssid>`
- `wpa-passphrase <ssid> <password>`
- Copy `psk` value to `/etc/netctl/<ssid>`

### Start a connection
`sudo netctl start <ssid>`

### Start a connection on boot
`sudo systemctl enable netctl@<ssid>`

## Pacman

### Full system upgrade
`pacman -Syu`

### Install AUR package
`makepkg -si`

## Fonts

### Install new font
`cp font-file.ttf /usr/share/fonts/TTF/`
`fc-cache`
