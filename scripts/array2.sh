#!/bin/bash
fruits=("apple" "banana" "cherry" "mango" "strawberry" "plum")

slice=("${fruits[@]:1:3}")

echo"Sliced String:"
for item in "${slice[@]}"; do
      echo "$item"
done