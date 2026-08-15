# ExpressVPN Auto-Connect (Linux + systemd)

> **Supporting Portfolio Project**
>
> A small Linux automation project demonstrating Bash scripting, systemd service management, boot-time reliability, and basic operational documentation.

A lightweight systemd-based solution for auto-connecting to ExpressVPN at boot using the command-line client.

## ✅ Features

* Smart detection: only connects if not already connected
* Works with systemd at boot/login
* Clean logs and output
* Backup-ready and portable

## 🗂 Files

| File                             | Purpose                              |
| -------------------------------- | ------------------------------------ |
| `expressvpn-autoconnect.sh`      | Bash script to connect to ExpressVPN |
| `expressvpn-autoconnect.service` | systemd unit for auto-run            |
| `expressvpn-autoconnect.md`      | Project notes and setup instructions |

## 🚀 Usage

### 1. Install the script

```bash
sudo cp expressvpn-autoconnect.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/expressvpn-autoconnect.sh
```

### 2. Install the systemd service

```bash
sudo cp expressvpn-autoconnect.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now expressvpn-autoconnect.service
```

### 3. Verify the service

```bash
systemctl status expressvpn-autoconnect.service
```

## 📦 Backup

The project can be backed up using standard tools such as `rsync` to a local or network backup target.

Example:

```bash
rsync -av ./expressvpn-autoconnect/ /path/to/backup/
```

## 💡 Credits

Created by Joshua Shaw

Tested on Linux Mint, June 2025
