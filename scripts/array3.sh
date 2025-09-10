#!/bin/bash

names=("Alice" "Bob")
age=("17" "18")
for age in "${age[@]}"
do
     for name in "${names[@]}"
      do
       echo "$name is $age years old"
  done
done