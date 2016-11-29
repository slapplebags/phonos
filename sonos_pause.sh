#!/bin/bash
STATUS=0
STATE='/etc/asterisk/agi/state'
if [[ $(curl -s http://[sonos IP address]:1400/status/perf | grep currently) = *PLAYING* ]]; then
STATUS=1
echo "$STATUS" > "$STATE"
else
echo "$STATUS" > "$STATE"
fi
sonos --zone=RINCON_5CAAFD2E3E8C01400:0 pause
