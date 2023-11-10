#!/bin/bash

# Lets create a function in bash that adds two number together
# Stretch goal can you do subtraction, multipliaction or division
# You will need to declare two variables

echo "Enter 2 number to add"
read num1
read num2
function add(){
    sum=$(( $num1 + $num2 ))
    echo $sum

}
add

if [$num2 -eq 0]; then
   echo "Error: Division by zero is not allowed."
function divide(){
    divide=$(( $num1 / $num2))
    echo $result}
result