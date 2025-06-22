# ExpressVPN Auto-Connect (Linux + systemd)

A lightweight systemd-based solution for auto-connecting to ExpressVPN at boot using the command-line client.

## ✅ Features

- Smart detection: only connects if not already connected
- Works with systemd at boot/login
- Clean logs and output
- Backup-ready and portable

## 🗂 Files

| File                              | Purpose                              |
|-----------------------------------|--------------------------------------|
| `expressvpn-autoconnect.sh`       | Bash script to connect to ExpressVPN |
| `expressvpn-autoconnect.service`  | systemd unit for auto-run            |
| `expressvpn-autoconnect.md`       | Project notes and setup instructions |

## 🚀 Usage

1. Copy the script:
   ```bash
   sudo cp expressvpn-autoconnect.sh /usr/local/bin/
   sudo chmod +x /usr/local/bin/expressvpn-autoconnect.sh
Install the systemd service:

bash
Copy code
sudo cp expressvpn-autoconnect.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now expressvpn-autoconnect.service
Confirm status:

bash
Copy code
systemctl status expressvpn-autoconnect.service
📦 Backup (optional)
Sync your project to a NAS, e.g.:

bash
Copy code
rsync -av ~/Documents/sysadmin/expressvpn-autoconnect /mnt/FreeCloud41/backups/
💡 Credits
Created by [Your Name]
Tested on Linux Mint, June 2025

sql
Copy code

Then commit:

```bash
git add README.md
git commit -m "Add README.md for GitHub"
git push


