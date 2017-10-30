# Zabbix Hue Alertscript
Simple bash script for allowing a Zabbix server to change color of a Philip's Hue (lightbulb) with alerts. 

## Setup
Requires the following parameters (config in Zabbix during custom media type setup):
* {ALERT.SUBJECT}
* hue ip address
* hue user name/token
* {ALERT.SENDTO} (hue bulb number)
