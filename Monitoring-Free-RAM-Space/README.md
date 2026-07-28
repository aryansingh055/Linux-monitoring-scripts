# Monitoring Free RAM Space

## 📌 Overview

This Bash script monitors the available RAM on a Linux system.

If the available RAM falls below a predefined threshold, it displays a warning message. Otherwise, it reports that the available RAM is sufficient.

---

## 📑 Table of Contents

- [Overview](#-overview)
- [Script](#-script)
- [Features](#-features)
- [Commands Used](#️-commands-used)
- [Source Code](#-source-code)
- [How to Run](#️-how-to-run)
- [Sample Output](#-sample-output)
- [Output Screenshot](#-output-screenshot)
- [Requirements](#-requirements)
- [Author](#-author)

---

## 📂 Script

```bash
monitoring_free_ram_space.sh
```

---

## ⚙️ Features

- Monitors available RAM in real time
- Displays a warning when free RAM is below the configured threshold
- Beginner-friendly Bash script
- Lightweight and easy to customize

---

## 🛠️ Commands Used

| Command | Purpose |
|---------|---------|
| `free -mt` | Displays system memory usage |
| `grep` | Filters the required line |
| `awk` | Extracts the available RAM value |
| `if` | Checks the threshold condition |

---

## 📜 Source Code

```bash
#!/bin/bash

FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
TH=2500

if [[ $FREE_SPACE -lt $TH ]]
then
    echo "WARNING, Ram is Low"
else
    echo "RAM is Sufficient - $FREE_SPACE M"
fi
```

---

## ▶️ How to Run

Give execute permission:

```bash
chmod +x monitoring_free_ram_space.sh
```

Run the script:

```bash
./monitoring_free_ram_space.sh
```

---

## 🧪 Sample Output

### RAM is sufficient

```text
RAM is Sufficient - 2831 M
```

### RAM is low

```text
WARNING, Ram is Low
```

---

## 🖼️ Output Screenshot

> Save your screenshot in this folder as:

```
images/ram_output.png
```

Then display it using:

```markdown
![RAM Monitoring Output](Monitoring-Free-RAM-Space/ram_output.png)
```

It will appear like this:

![RAM Monitoring Output](Monitoring-Free-RAM-Space/ram_output.png)

---

## 📖 Requirements

- Linux Operating System
- Bash Shell

---

## 👨‍💻 Author

**Aryan Singh**
