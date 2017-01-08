#!/bin/bash

CURL="/usr/bin/curl"

# Chat ID del CHANNEL Raspberry Pi
CHATID=""
# TOKEN del bot @raspberrita_bot
TOKEN=""

TIME="10"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
TEXT="El torrent _\"$@\"_ ha acabat de descarregar-se."

$CURL -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=markdown" $URL

exit 0
