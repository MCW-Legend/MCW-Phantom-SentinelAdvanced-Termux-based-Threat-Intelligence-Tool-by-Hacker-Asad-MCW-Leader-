# STEP 1: Update & Upgrade your Termux packages
pkg update -y && pkg upgrade -y

# STEP 2: Install required packages
pkg install -y git python curl wget nmap php jq

# STEP 3: Clone the tool from GitHub
git clone https://github.com/MCW-Legend/MCW-Phantom-SentinelAdvanced-Termux-based-Threat-Intelligence-Tool-by-Hacker-Asad-MCW-Leader-.git

# STEP 4: Go into the directory
cd MCW-Phantom-Sentinel

# STEP 5: Give execute permission to install script
chmod +x install.sh

# STEP 6: Run the installer to setup everything automatically
bash install.sh
