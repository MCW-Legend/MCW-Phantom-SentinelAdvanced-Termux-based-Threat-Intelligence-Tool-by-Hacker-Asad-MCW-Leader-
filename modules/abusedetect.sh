#!/bin/bash

# Abuse Detection Module – MCW Phantom Sentinel
# Author: Hacker Asad

echo "[+] Abuse Detection Module Activated"
read -p "Enter text to analyze: " user_input

# Define abusive words (sample list)
abuse_words=("idiot" "stupid" "nonsense" "bastard" "hate" "fool" "moron" "kill" "dumb")

abuse_found=false

for word in "${abuse_words[@]}"; do
    if echo "$user_input" | grep -i -w "$word" > /dev/null; then
        echo -e "[⚠] Abusive word detected: $word"
        abuse_found=true
    fi
done

if [ "$abuse_found" = false ]; then
    echo "[✔] No abuse detected. Input is clean."
fi
