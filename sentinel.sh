#!/bin/bash

# MCW PHANTOM SENTINEL v1.0
# Author: Hacker Asad (MCW-Legend)
# License: Paid Users Only – Unauthorized use is prohibited.

#============================#
#        COLORS              #
#============================#
RED="\033[1;31m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
CYAN="\033[1;36m"
RESET="\033[0m"

#============================#
#        LICENSE CHECK       #
#============================#
license_check() {
  LICENSE_KEY=$(cat license.db 2>/dev/null)
  VALID_KEY="MCW-PAID-ACCESS-999"

  if [[ "$LICENSE_KEY" == "$VALID_KEY" ]]; then
    echo -e "${GREEN}[✔] License Verified${RESET}"
  else
    echo -e "${RED}[✘] Invalid or Missing License Key!${RESET}"
    echo -e "${YELLOW}Contact Hacker Asad to purchase access.${RESET}"
    exit 1
  fi
}

#============================#
#         MAIN MENU          #
#============================#
main_menu() {
  clear
  echo -e "${CYAN}"
  echo " ███╗   ███╗ ██████╗ ██╗    ██╗"
  echo " ████╗ ████║██╔═══██╗██║    ██║"
  echo " ██╔████╔██║██║   ██║██║ █╗ ██║"
  echo " ██║╚██╔╝██║██║   ██║██║███╗██║"
  echo " ██║ ╚═╝ ██║╚██████╔╝╚███╔███╔╝"
  echo " ╚═╝     ╚═╝ ╚═════╝  ╚══╝╚══╝"
  echo "     MCW Phantom Sentinel v1.0"
  echo -e "${RESET}"

  echo -e "${YELLOW}1) IP Logger"
  echo "2) Port Scanner"
  echo "3) SQL Injection Scanner"
  echo "4) XSS Payload Tester"
  echo "5) Abuse Detection"
  echo "6) Exit${RESET}"
  echo
  read -p "Choose an option: " choice

  case $choice in
    1) bash modules/iplogger.sh ;;
    2) bash modules/portscanner.sh ;;
    3) bash modules/sqlscanner.sh ;;
    4) bash modules/xsstester.sh ;;
    5) bash modules/abusedetect.sh ;;
    6) exit ;;
    *) echo -e "${RED}Invalid choice!${RESET}" ; sleep 1 ; main_menu ;;
  esac
}

#============================#
#       START SCRIPT         #
#============================#
license_check
main_menu
