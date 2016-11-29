#!/bin/bash
STATE='/etc/asterisk/agi/state'
if grep -q '0' $STATE;
then
echo paused 
else
echo playing
sonos --zone=RINCON_5CAAFD2E3E8C01400:0 play
fi
