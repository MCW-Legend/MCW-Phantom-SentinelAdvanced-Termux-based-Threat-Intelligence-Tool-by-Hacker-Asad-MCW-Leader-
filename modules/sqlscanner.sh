#!/bin/bash

echo "[+] SQL Injection Scanner Module Activated"
read -p "Enter target URL (with parameter): " target

if [[ -z "$target" ]]; then
  echo "[!] URL cannot be empty."
  exit 1
fi

echo "[+] Running sqlmap on $target"
sqlmap -u "$target" --batch --random-agent --level=2 --risk=1

echo "[+] SQLi scan completed."
