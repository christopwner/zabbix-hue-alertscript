#!/bin/bash

# Copyright (C) 2017 Roy Belovoskey and Christopher Towner
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Zabbix alertscript for Philip's Hue (lightbulb)

# parameters from zabbix
subject=$1
ip=$2
user=$3
light=$4

# curl setup 
url="http://${ip}/api/${user}/lights/${light}/state"
resolve='{"on": true, "xy": [0.1, 0.7], "alert": "none"}'
problem='{"on": true, "xy": [0.65,0.25], "alert": "lselect"}'

# parse subject (from zabbix) and call hue with appropriate payload
if [ "$subject" = "Resolved" ]; then
    curl -X PUT -H "Content-Type: application/json" -d "${resolve}" "${url}"
elif [ "$subject" = "Problem" ]; then
    curl -X PUT -H "Content-Type: application/json" -d "${problem}" "${url}"
fi

