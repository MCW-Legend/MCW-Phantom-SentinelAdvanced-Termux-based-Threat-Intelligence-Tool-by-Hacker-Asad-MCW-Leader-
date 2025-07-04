# 💀 MCW Phantom Sentinel v1.0 – Termux Cybersecurity Weapon 🔥

_A powerful Termux-based threat intelligence tool built by **Hacker Asad**, leader of **MCW (Muslim Cyber Warriors)**._

---

## 📌 What is MCW Phantom Sentinel?

**MCW Phantom Sentinel** is an advanced cybersecurity and threat intelligence toolkit designed for **Android Termux** users. It gives ethical hackers and digital defenders the ability to **scan, detect, and analyze** real-world cyber threats directly from their mobile devices.

---

## 👨‍💻 Creator Info

- 👑 Developed by: **Hacker Asad**
- 🛡️ Organization: **MCW – Muslim Cyber Warriors**
- 🌍 Mission: To empower youth with ethical hacking knowledge and cyber awareness

---

## 🎯 Purpose of This Tool

| Goal                          | Description                                                                 |
|------------------------------|-----------------------------------------------------------------------------|
| 🧠 Education                 | Teach ethical hacking & vulnerability scanning                             |
| 🛡️ Cyber Defense            | Detect threats like SQLi, XSS, abusive messages                            |
| 🔍 Investigation             | Track cyberbullying and online abuse in real-time                         |
| 📱 Mobile Intelligence Tool  | Conduct scans and analysis directly from Termux                            |
| 📚 Awareness                 | Promote ethical hacking and responsible cyber practices                    |

---

## 🚀 Features

- 🌐 **IP Logger** – Track IP info with geolocation
- 🕵️ **Port Scanner** – Scan for open ports (via `nmap`)
- ⚔️ **SQL Injection Scanner** – Detect SQLi via `sqlmap`
- 🧪 **XSS Payload Tester** – Detect vulnerable GET parameters
- 🔍 **Abuse Word Detector** – Analyze abusive language in text
- 🔑 **License Key System** – Secure tool access
- 🎨 **Custom Banners** – Hacker branding & alert visuals

---

## ⚙️ Installation Commands

Use these commands in **Termux** to install the tool:

```bash
# STEP 1: Update and install core packages
pkg update -y && pkg upgrade -y
pkg install -y git python curl wget nmap php jq
pip install requests

# STEP 2: Clone the MCW Phantom Sentinel repo
git clone https://github.com/MCW-Legend/MCW-Phantom-SentinelAdvanced-Termux-based-Threat-Intelligence-Tool-by-Hacker-Asad-MCW-Leader-.git

# STEP 3: Go into the project folder
cd MCW-Phantom-Sentinel

# STEP 4: Make the installer executable and run it
chmod +x install.sh
bash install.sh
