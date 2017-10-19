# Zabbix Hue Alertscript
Simple bash script for allowing a Zabbix server to change color of a Philip's Hue (lightbulb) with alerts. 

## Setup
Requires the following parameters (config in Zabbix during custom media type setup):
* {ALERT.SUBJECT}
* {ALERT.SENDTO} (should be set to hue ip)
* hue user name/token
* hue bulb number
