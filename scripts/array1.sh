#!/bin/bash
fruits=("apple" "banana" "cherry")
length=${#fruits[@]}
echo "Array length:$length"
i=0
while [$i -lt $length ] ; do
    echo "Fruit: ${fruits[$i]}"
    ((i++))
    
done