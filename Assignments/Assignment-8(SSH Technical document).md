# 🔐 SSH for Beginners — Interactive & Simple Guide

Welcome! This guide helps you understand SSH in a clear and beginner‑friendly manner.

---

## ✅ What is SSH?

SSH stands for **Secure Shell** — a protocol that lets you **securely access another computer** over a network.

✔ Remote login to another system
✔ Execute commands on a remote machine
✔ Transfer files securely
🔒 All communication is encrypted

Example use cases:

* Accessing your friend’s Ubuntu system
* Connecting to servers for programming/devops
* Transferring assignment files safely

---

## 🧠 How SSH Works (Simple Logic)

Your computer (Client) connects to another computer (Server) using:

* **IP Address** → where to connect
* **Username** → who you are
* **Password / SSH Key** → verification

📌 Think of SSH like a *secure door* that requires the correct key to enter.

---

## 🏁 Basic Command you MUST know

```bash
ssh username@server_ip
```

Example:

```bash
ssh divya@192.168.1.25
```

If first time → asks to trust connection → type: **yes**
Then enter password.

🤝 Connection established!

---

## 🔑 SSH Key Authentication

Instead of typing password every time, you can use **Key‑based login**.

Generate SSH key on client system:

```bash
ssh-keygen -t ed25519
```

Keys created:

* **id_ed25519** → Private key (keep safe!)
* **id_ed25519.pub** → Public key (share with server)

Copy key to server:

```bash
ssh-copy-id username@server_ip
```

Now login without password 🎉

---

## 🌐 Finding IP Address

On Ubuntu:

```bash
ip a
```

Or check Wi‑Fi settings.

---

## 📂 Secure File Transfer

Send file to server:

```bash
scp file.txt username@server_ip:/home/username/
```

Download file from server:

```bash
scp username@server_ip:/home/username/report.pdf ./
```

---

## 🧰 Useful Options

| Command               | What it does                        |
| --------------------- | ----------------------------------- |
| `ssh -p 2222 user@ip` | Connect to server on custom port    |
| `ssh -X user@ip`      | Forward GUI apps (run GUI remotely) |
| `ssh -v user@ip`      | Debug connection                    |

---

## 🔐 SSH Configuration File

Customize connection shortcuts:

Edit file:

```bash
nano ~/.ssh/config
```

Example config:

```
Host college
    HostName 10.1.23.90
    User ubuntu
    Port 22
```

Now connect simply:

```bash
ssh college
```

---

## 🚨 Basic Security Tips

✅ Use SSH keys instead of passwords
✅ Change default port (22) if possible
✅ Disable root login
✅ Keep OS updated

---

## 🪲 Common Errors

| Error              | Fix                              |
| ------------------ | -------------------------------- |
| Permission denied  | Wrong password / key permissions |
| Host unreachable   | Check IP / Network               |
| Connection refused | SSH server not running           |

Start SSH service on server:

```bash
sudo systemctl restart ssh
```

Install SSH server (if missing):

```bash
sudo apt install openssh-server
```

---

## 🛰️ Networking Concepts in SSH

Understanding basic networking helps you master SSH.

### 🔹 Ports & Protocol

* SSH uses **TCP Port 22** by default.
* You can change port for security.

```bash
ssh -p 2222 user@ip
```

### 🔹 Public IP vs Private IP

| Type       | Where used           | Example       |
| ---------- | -------------------- | ------------- |
| Private IP | Inside local network | `192.168.x.x` |
| Public IP  | Accessible globally  | `103.x.x.x`   |

📌 If client & server are in **different networks** → you need **public IP** or **port forwarding**.

### 🔹 DNS & Hostnames

Instead of IP, SSH can use names:

```bash
ssh user@myserver.com
```

✅ Easy to remember

---

## 🏅 Deep Dive into SSH Keys

SSH uses **public‑key cryptography**.

| File            | Location           | Purpose                                       |
| --------------- | ------------------ | --------------------------------------------- |
| id_ed25519      | `~/.ssh/`          | Private key → keep safe                       |
| id_ed25519.pub  | `~/.ssh/`          | Public key → stored on server                 |
| authorized_keys | `/home/user/.ssh/` | Server file that contains allowed public keys |

### 🔐 Permissions Matter!

```bash
chmod 600 ~/.ssh/id_ed25519
chmod 700 ~/.ssh
```

If permissions wrong → server rejects keys.

---

## 🚚 SFTP — Secure File Transfer

SSH also provides a **file manager mode**.

Start an SFTP session:

```bash
sftp user@server_ip
```

Useful commands inside SFTP:

| Command          | Use               |
| ---------------- | ----------------- |
| `ls`             | List remote files |
| `put file.txt`   | Upload file       |
| `get folder.zip` | Download file     |
| `exit`           | Quit              |

---

## 🛡️ SSH Server Hardening (Security Setup)

Edit server SSH config:

```bash
sudo nano /etc/ssh/sshd_config
```

Recommended settings:

```
Port 2222
PasswordAuthentication no
PermitRootLogin no
```

Apply changes:

```bash
sudo systemctl restart ssh
```

---

## 📡 SSH Tunneling (Port Forwarding)

Use SSH to securely forward traffic.

### Example: Open website via secure tunnel

```bash
ssh -L 8080:localhost:80 user@server_ip
```

Open in browser:

```
http://localhost:8080
```

✅ Used to securely access internal services

---

## 🎯 SSH Agent — No need to enter passphrase repeatedly

Start the agent:

```bash
ssh-agent bash
ssh-add ~/.ssh/id_ed25519
```

✅ Stores key in memory securely

---

## 🔄 Reverse SSH (Server connects to you)

Used when server is behind firewall.

```bash
ssh -R 9090:localhost:22 user@public_machine
```

Then from public machine:

```bash
ssh -p 9090 localhost
```

✅ Helpful for remote troubleshooting

---

## ⚙️ Inside SSH — How Encryption Works

SSH uses **asymmetric encryption**:

* **Private key** → Stays with client
* **Public key** → Shared with server

✅ They form a secure handshake
✅ Password never travels over network
✅ Prevents spying / MITM attacks

📌 Algorithms used:

* **ED25519** → Modern, fast, secure (recommended ✅)
* **RSA** → Older, slow at large sizes

---

## 🔍 SSH Authentication: 2 Methods

| Method          | Security | Used for                   |
| --------------- | -------- | -------------------------- |
| Password login  | Low ❌    | Quick access for beginners |
| Key-based login | High ✅   | Servers, DevOps, Cloud     |

Why keys are better:

* Hard to brute-force
* Unique per user, per device
* Password can be stolen, key can’t

---

## 🧱 SSH Daemon (Server Side)

The SSH service running on server is called:

```bash
sshd
```

Manage service:

```bash
sudo systemctl status ssh
sudo systemctl restart ssh
```

✅ If this is stopped → no SSH access

Config file location:

```bash
/etc/ssh/sshd_config
```

Make changes carefully! One wrong line → lockout

---

## 🔒 Firewall Rules for SSH

On Ubuntu with UFW:

```bash
sudo ufw allow 22
sudo ufw enable
```

If custom port (example: 2222):

```bash
sudo ufw allow 2222
```

✅ Server must allow port to connect

---

## 🖥️ Connect via SSH using GUI tools

For beginners, GUI clients make SSH simpler:

| OS          | Tool                                  |
| ----------- | ------------------------------------- |
| Windows     | PuTTY, MobaXterm, VS Code Remote SSH  |
| macOS/Linux | Terminal (built‑in), Remmina, VS Code |

✅ UI for managing multiple servers

---

## 🔄 Copying Folders (not only files!)

```bash
scp -r myFolder user@ip:/home/user/
```

`-r` = recursive copy

---

## 🧠 SSH Host Keys vs User Keys (Important!)

| Key Type | Purpose            | Stored At   |
| -------- | ------------------ | ----------- |
| Host Key | Identifies server  | `/etc/ssh/` |
| User Key | Authenticates user | `~/.ssh/`   |

📌 Host key mismatch warning → Possible **server spoofing attack**

Fix only if server changed legitimately:

```bash
ssh-keygen -R server_ip
```

---

## ✅ End of Chapter — You are now SSH Ready!
