# Monitoring Free Disk Space and Send Email Alert

## 📌 Overview

This Bash script monitors the disk usage of a Linux system.

If the disk usage exceeds a predefined threshold, the script automatically sends an email alert using the `mail` command through a configured Postfix mail server.

---

## 📂 Script

```bash
monitoring_free_disk_space_and_send_email_alert.sh
```

---

## ⚙️ Features

- Monitors disk usage
- Sends email alerts automatically
- Uses Postfix as the mail server
- Easy to customize
- Beginner-friendly Bash script

---

## 🛠️ Commands Used

| Command | Purpose |
|---------|---------|
| `df -h` | Displays disk usage |
| `grep` | Filters filesystem |
| `awk` | Extracts disk usage percentage |
| `tr` | Removes the `%` symbol |
| `mail` | Sends email notifications |

---

## 📜 Source Code

```bash
#!/bin/bash

FU=$(df -h | grep "sda1" | awk '{print $5}' | tr -d %)
TO="abc@gmail.com"

if [[ $FU -ge 10 ]]
then
        echo "Warning, Disk Space is low - $FU %" | mail -s "Disk SPACE ALERT!" $TO
else
        echo "All Good"
fi
```

---

## 📋 Prerequisites

Before running this script, make sure:

- Postfix is installed and configured
- `mailutils` package is installed
- Email sending works correctly from your Linux system

---

## ▶️ How to Run

Give execute permission:

```bash
chmod +x monitoring_free_disk_space_and_send_email_alert.sh
```

Run the script:

```bash
./monitoring_free_disk_space_and_send_email_alert.sh
```

---

## 🧪 Sample Output

### Disk usage below threshold

```text
All Good
```

### Disk usage above threshold

```text
Warning, Disk Space is low - 85 %
```

An email notification will also be sent to the configured recipient.

---

## 🖼️ Output Screenshot

Below is the output of the script running successfully.

![Disk Monitoring Output](disk_output.png)

---

## 📖 Requirements

- Linux Operating System
- Bash Shell
- Postfix
- mailutils

---

## 👨‍💻 Author

**Aryan Singh**
