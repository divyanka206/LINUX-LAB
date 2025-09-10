# 🔴LAB-0 – Setting up a Linux Environment🔴

## ✨**1. Installation Method Chosen**✨
**Method:** Virtual Machine (VM) using VirtualBox  
*(If you used Dual Boot, replace this section accordingly.)*

---

## **2. Setup & Installation Steps**
*(Add your screenshots in the placeholders below.)*

### Step 1: Download and Install VirtualBox
![alt text](../../images/image-2.png)

### Step 2: Download Ubuntu LTS ISO
![alt text](../../images/image-1.png)

### Step 3: Create a New Virtual Machine
![alt text](/images/image-24.png)

### Step 4: Install Ubuntu in the VM
![alt text](/images/image-25.png)

### Step 5: First Login
![alt text](/images/image-26.png)

---

## **3. Terminal Outputs**

After successful installation, open the terminal in Ubuntu and run the following commands:

### **📌Command 1: Check Ubuntu Version**
```bash
lsb_release -a
```
output:
```
No LSB modules are available.
Distributor ID:	Ubuntu
Description:	Ubuntu 25.04
Release:	25.04
Codename:	plucky

```
### 📌Command 2: Kernel info
```bash
uname -a
```
output:
```
Linux divyanka2006-QEMU-Virtual-Machine 6.14.0-28-generic #28-Ubuntu SMP PREEMPT_DYNAMIC Wed Jul 23 11:44:20 UTC 2025 aarch64 aarch64 aarch64 GNU/Linux

```
### 📌Command 3: Disk Usage
```bash
df -h
```
output:
```
Filesystem      Size  Used Avail Use% Mounted on
tmpfs           540M  1.8M  538M   1% /run
/dev/vda2        62G   11G   48G  19% /
tmpfs           2.7G     0  2.7G   0% /dev/shm
efivarfs        256K   27K  230K  11% /sys/firmware/efi/efivars
tmpfs           1.0M     0  1.0M   0% /run/credentials/systemd-journald.service
tmpfs           5.0M  8.0K  5.0M   1% /run/lock
tmpfs           1.0M     0  1.0M   0% /run/credentials/systemd-resolved.service
/dev/vda1       1.1G  6.4M  1.1G   1% /boot/efi
tmpfs           2.7G   24K  2.7G   1% /tmp
tmpfs           1.0M     0  1.0M   0% /run/credentials/serial-getty@ttyAMA0.service
tmpfs           540M  124K  540M   1% /run/user/1000

```

### 📌Command 4: Memory Usage
```bash
free -m
```
output:
```
              total        used        free      shared  buff/cache   available
Mem:            5392        1067        3447          47        1081        4325
Swap:           4095           0        4095

```

## ❓Extra Questions:
Q1. What are two advantages of installing Ubuntu in VirtualBox?
No risk of affecting your existing OS.
Easy to reset, delete, or modify without impacting the host system.

🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸

Q2. What are two advantages of dual booting instead of using a VM?
Better performance since Ubuntu runs directly on hardware.
Full access to system resources without limitations of virtualization.

🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸