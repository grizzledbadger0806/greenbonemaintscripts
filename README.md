# Greenbone Automation Suite

&#x20; &#x20;

**Greenbone Automation Suite** is a lightweight collection of maintenance, update, and startup scripts for Greenbone Community Edition (GVM). The goal is to simplify daily operations, automate feed updates, and ensure your scanning environment is always ready to go.

These scripts are ideal for **home labs**, **SOC environments**, and **admins** who want quick operational control without manually running long GVM commands.

---

## ⚠️ Legal Disclaimer

**FOR LEGITIMATE AND AUTHORIZED USE ONLY.** These scripts interact with Greenbone Community Edition but do not perform scanning on their own. You are fully responsible for ensuring that your use of GVM and these scripts complies with local laws and that you are authorized to scan any targets you configure.

---

## ✨ Key Features

### 🔄 Automated Feed Updates

- Updates **NVT**, **GVMD**, **SCAP**, and **CERT** feeds
- Automatically restarts required GVM services
- Ensures your vulnerability database is always current

### ▶️ Simple Service Management

- Start all required Greenbone services with a single script
- Ensures components start in the correct order
- Reduces troubleshooting and dependency errors
---

## 📁 Repository Structure

```
./
├── greenbone_db_update.sh        # Feed + database update script
├── greenbone_start.sh               # Start all required GVM/Greenbone services
└── README.md                        # Documentation
```

---

## 🛠️ Installation

### Step 1: Clone the Repository

```
git clone https://github.com/<yourname>/Greenbone-Automation.git
cd Greenbone-Automation
```
---

## ⚙️ Configuration

No configuration files are required. However:

- These scripts assume standard Greenbone CE (GVM) service names.
- It also assumes you followed the installation instructions for Greenbone Community Containers (https://greenbone.github.io/docs/latest/22.4/container/index.html)
- If your environment uses custom names, adjust them inside the `.sh` files.

---

## 🚀 Usage

### 🔄 Update Greenbone Feeds

```
./greenbone_db_update.sh
```

This will:

- Sync all feeds
- Reload the scanner
- Restart required services

---

### ▶️ Start All Greenbone Services

```
./greenbone_start.sh
```

Once started, access the UI:

```
https://<your-ip>:9392
More than likely https://127.0.0.1:9392
```

---

## 🤝 Contributing

Pull requests and improvements are welcome. This project is kept intentionally simple, but enhancements are always appreciated.

---

## 📜 License

This repository is licensed under the MIT License.
