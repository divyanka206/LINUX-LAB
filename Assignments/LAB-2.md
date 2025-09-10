# LAB2 – Script Execution & Explanation

## **1. Objective**
Understand how existing shell scripts work by executing them, observing outputs, and explaining their functionality.

---

## **2. Selected Scripts**
- **Script 1:** `print_numbers.sh`
- **Script 2:** `array_loop.sh`

---

## **3. Script 1: print_numbers.sh**

### **Purpose**
This script prints numbers from 1 to 5 using a simple **for loop**.

### **Script Code**
```bash
#!/bin/bash
# Script to print numbers from 1 to 5

for i in {1..5}
do
    echo "Number: $i"
done
