#!/bin/bash

echo -e "\n[+] Port Scanner Module Activated"
read -p "Enter target IP or domain: " target
read -p "Enter port range (e.g. 1-1000): " ports

echo -e "\n[+] Scanning $target on ports $ports...\n"
nmap -p $ports $target

echo -e "\n[+] Scan complete."
