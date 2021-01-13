#!/bin/sh

NOCOLOR='\033[0m'
RED='\033[0;31m'
CYAN='\033[0;36m'

sigterm_handler () {
  echo -e "${CYAN}[*] Caught SIGTERM/SIGINT!${NOCOLOR}"
  pkill hostapd
  exit 0
}

trap 'sigterm_handler' TERM INT

echo -e "${CYAN}[+] Starting hostapd ...${NOCOLOR}"
hostapd /etc/hostapd/hostapd.conf &
pid=$!

echo -e "${CYAN}[*] Running scripts ...${NOCOLOR}"
run-parts --exit-on-error /start.d || echo -e "${RED}[-] Error running scripts${NOCOLOR}"

wait $pid
