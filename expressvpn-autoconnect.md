# ExpressVPN Auto-Connect via systemd

This project contains a script and systemd unit to auto-connect to ExpressVPN on boot, using `expressvpn connect smart`.

## ✅ Features

- Detects if already connected before reconnecting
- Works with systemd at boot
- Minimal logging
- Fail-safe behavior (doesn’t spam retries)

## 📁 Files

- `expressvpn-autoconnect.sh` — main Bash script
- `expressvpn-autoconnect.service` — systemd unit
- `expressvpn-autoconnect.md` — these notes

## 🛠️ Setup Steps

```bash
sudo cp expressvpn-autoconnect.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/expressvpn-autoconnect.sh
sudo cp expressvpn-autoconnect.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now expressvpn-autoconnect.service
🧠 Notes
Script checks expressvpn status to avoid redundant connections.

Use systemctl status expressvpn-autoconnect.service to monitor.

Tested on Linux Mint (2025-06-22).

yaml
Copy code

Save and exit (`Ctrl + O`, `Enter`, then `Ctrl + X`).

---

### ✅ 3. Verify Final Structure

Run:

```bash
ls -l ~/Documents/sysadmin/expressvpn-autoconnect
You should see:

Copy code
expressvpn-autoconnect.sh
expressvpn-autoconnect.service
expressvpn-autoconnect.md
