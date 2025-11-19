# FOR5G
Watchdog for 5G

This watchdog connects the modem to the 5G base station

```
sudo crontab -e
0 * * * * /home/opsezn/refresh-modem.sh
* * * * * /home/opsezn/internet-check.sh
```

Preset

```
sudo mmcli -m 0 --set-allowed-modes="4g|5g" --set-preferred-mode="5g"
sudo nmcli device set cdc-wdm1 autoconnect yes
sudo nmcli c mod internet connection.autoconnect yes
```
