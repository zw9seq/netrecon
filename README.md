# 🔍 Netrecon

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
![Bash](https://img.shields.io/badge/Bash-4.0%2B-blue)
![Status](https://img.shields.io/badge/status-active-success)

A lightweight **Bash script** for **LAN reconnaissance and service discovery**.  
It automates host detection, port scanning, and web service fingerprinting in local networks, organizing results into a clean workspace for later analysis.

---

## ✨ Features
- 🕵️ **Optional MAC spoofing** with `macchanger`.
- 🌐 **Host discovery** using `arp-scan`.
- ⚡ **Fast port scanning** with `masscan` (common ports).
- 🖥️ **Web reconnaissance**:
  - Detects HTTP/HTTPS services.
  - Captures **screenshots automatically** with `gowitness`.
- 📂 **Organized output**:
  - Creates a target folder: `~/Lab/<target>/`.
  - Saves `hosts.txt`, `ports.txt`, and web screenshots.

---

## 📦 Requirements
The script relies on several external tools:

- `macchanger`  
- `arp-scan`  
- `masscan`  
- `go`  
- `gowitness`  
- `google-chrome`  

All dependencies are listed in **`requirements.txt`**.  

---

## ⚙️ Installation

### 1. Clone the repository
```bash
git clone https://github.com/zw9seq/netrecon.git
cd netrecon
````

### 2. Install dependencies

Run the included **setup script**, which auto-detects your package manager and installs everything from `requirements.txt`:

```bash
chmod +x setup.sh
./setup.sh
```

Supported package managers:

* ✅ `apt-get` (Debian/Ubuntu)
* ✅ `dnf` (Fedora/RHEL)
* ✅ `yay` (Arch Linux)
* ✅ `zypper` (openSUSE)

If your system uses a different package manager, install dependencies manually.

### 3. Additional Configuration

If you want to make the script easier to execute by adding it to your system's PATH, simply copy it to one of the directories included in your PATH. To view your current PATH, run:

```bash
echo $PATH
```

Typically, you'll want to place it in the **/usr/local/bin** directory. To do so, run:

```bash
sudo cp netrecon /usr/local/bin
```

---

## 🚀 Usage

1. Make the script executable:

   ```bash
   chmod +x netrecon
   ```
2. Run it:

   ```bash
   ./netrecon
   ```
3. Provide a **target name** (workspace folder).
4. Choose whether to **change your MAC address**.
5. The script will automatically:

   * 🔎 Discover hosts in your LAN.
   * 📡 Scan common ports.
   * 🌍 Identify and screenshot web services.

📁 Results will be stored in:

```
~/Lab/<target>/
```

Example structure:

```
Lab/
└── test-target/
    ├── hosts.txt
    ├── ports.txt
    └── screenshots/
```

---

## ⚠️ Disclaimer

This script is intended for **educational purposes and authorized security testing only**.
Do **not** use it on networks without explicit permission. Unauthorized use may be illegal.

---

## 👤 Author

**zw9seq**
📅 Built with 💻 + ☕

For more details: https://zw9seq.github.io/proyectos/netrecon

⭐ If you find this tool useful, consider giving the repo a **star**!
