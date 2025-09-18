# 🔸LAB2 – Script Execution & Explanation🔸

## ✅**1. Objective**
Understand how existing shell scripts work by executing them, observing outputs, and explaining their functionality.

---

## ✅**2. Selected Scripts**
- **Script 1:** `array4.sh`
- **Script 2:** `fourth_script.sh`

---

## ✅**3. Script 1: print_numbers.sh**

### **Purpose**
This script demonstrates:
```
How to declare and use arrays in Bash scripting.
How to access specific elements of an array.
How to iterate through all elements in an array using a for loop.
How to print the values stored in the array.
``` 

### ✨**Script Code**✨
```bash
#!/bin/bash
 
 fruits=("apple" "banana" "cherry")

echo "First fruit: ${fruits[0]}"

for fruit in "${fruits[@]}"; do
    echo "Fruit: $fruit"
done
```
## **4. Script 2:** 

## **Purpose**
It shows how to:
```
Compare numeric values.
Execute different commands based on the true or false condition.
Understand the use of comparison operators like -gt (greater than).
```

```bash
#!/bin/bash
num=10

if [ $num -gt 5 ]; then
    echo "Number is greater than 5"
else
    echo "Number is less than or equal to 5"
fi
```
## 📌Screenshots:
![alt text](../images/image-27.png)

🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸

![alt text](../images/image-28.png)

🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸

## ❓Extra Questions:

Q1. What is the purpose of #!/bin/bash at the top of a script?
```
- It specifies the interpreter used to run the script.
- #!/bin/bash tells the system to use the Bash shell to execute the script.
```

Q2. How do you make a script executable?

To make a script executable, run:
```
- chmod +x array4.sh
- chmod +x fourth_script.sh
```

