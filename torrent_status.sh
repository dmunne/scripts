#!/bin/bash

CURL="/usr/bin/curl"
PROGRAMA="qbittorrent-nox"
QBITTORRENT="/etc/init.d/qbittorrent"

ESTAT=`ps aux | grep $PROGRAMA | grep -v grep | wc -l`

# Chat ID del CHANNEL Raspberry Pi
CHATID=""

# TOKEN del bot @raspberrita_bot
TOKEN=""

TIME="10"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
WARNING=⚠
TEXT="$WARNING qBittorrent service restarted."

if [ $ESTAT -eq "0" ]; then
	$QBITTORRENT start
	$CURL -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=markdown" $URL
fi

exit 0
