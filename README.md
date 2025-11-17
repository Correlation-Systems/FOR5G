# FOR5G
Watchdog for 5G

This watchdog connects the modem to the 5G base station

```
sudo crontab -e
0 * * * * /home/opsezn/refresh-modem.sh
* * * * * /home/opsezn/internet-check.sh
```
