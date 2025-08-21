Here’s a Markdown file you can save as `linux_commands.md`:

````markdown
# Basic Linux Commands

This guide covers some basic Linux commands (`cd`, `cp`, `mkdir`, `touch`, `ls`, `pwd`) with examples, including moving a file from one directory to another.

---

## 1. `pwd` – Print Working Directory
**Description:** Displays the full path of the current directory.

```bash
pwd
````

**Example Output:**

```
/home/divyanka2006/Documents

```

---

## 2. `ls` – List Files and Directories

**Description:** Lists files and directories in the current location.

```bash
ls
```

**Example Output:**

```
 projects
```

---

## 3. `cd` – Change Directory

**Description:** Moves between directories.

```bash
cd Documents
```

**Example:**
If you are in `/home/user` and run:

```bash
cd Documents
pwd
```

Output:

```
divyanka2006@divyanka2006-QEMU-Virtual-Machine:~/Documents
```

---

## 4. `mkdir` – Make Directory

**Description:** Creates a new directory.

```bash
mkdir new_folder
```

**Example Output:**

```
divyanka2006@divyanka2006-QEMU-Virtual-Machine:~/Documents$ ls
projects
```

---

## 5. `touch` – Create an Empty File

**Description:** Creates a new empty file (or updates its timestamp if it exists).

```bash
touch file1.txt
```

**Example Output:**

```
divyanka2006@divyanka2006-QEMU-Virtual-Machine:~/Documents/projects$ ls
file1.txt
```

---

## 6. `cp` – Copy Files or Directories

**Description:** Copies files from one location to another.

```bash
cp file1.txt new_folder/
```

**Example:**
If `file1.txt` is in `/home/user` and `new_folder` exists:

```bash
cp file1.txt new_folder/
ls new_folder
```

Output:

```
divyanka2006@divyanka2006-QEMU-Virtual-Machine:~/Documents/project1$ ls
file1.txt
```

---

## 7. Moving a File from One Directory to Another

We can move using `mv`.

```bash
mkdir folder1 folder2
touch folder1/test.txt
mv folder1/test.txt folder2/
```

**Explanation:**

* `mkdir folder1 folder2` → Creates two directories.
* `touch folder1/test.txt` → Creates a file `test.txt` inside `folder1`.
* `mv folder1/test.txt folder2/` → Moves `test.txt` to `folder2`.

**Verification:**

```bash
ls folder1
# (empty)

ls folder2
# test.txt
```

---

✅ These are the basics to navigate and manage files in Linux.

```

Do you want me to also **add diagrams** in this `.md` file showing how files move between folders? That would make it more visual.
```
