# 🔸 LAB5 – File & Backup Automation

## How the script works
- The script ensures it runs from its own directory.
- Creates a `backup/` folder (if missing).
- Finds all `.txt` files in the current folder.
- Copies each `.txt` into `backup/` and appends a timestamp `YYYYMMDD_HHMMSS` to the filename.

## 🔹Commands:

### Creating script for backup (backup.sh)
```bash
touch backup.sh
```

### 🔹Creating files
```bash
touch file1.txt
touch file2.txt
```

### 🔹echo command
```bash
echo "hello world" > file1.txt
```

### 🔹chmod command
```bash
chmod 777 backup.sh
```

### 🔹Run backup script
```bash
./backup.sh
```

## Screenshots:

![alt text](../images/image-39.png)

![alt text](../images/image-40.png)

![alt text](../images/image-41.png)

![alt text](../images/image-42.png)

![alt text](../images/image-43.png)

![alt text](../images/image-44.png)

