#!/bin/bash
# Given three integers (, , and ) representing the three sides of a triangle, identify whether the triangle is scalene, isosceles, or equilateral.
# If all three sides are equal, output EQUILATERAL.
# Otherwise, if any two sides are equal, output ISOSCELES.
# Otherwise, output SCALENE.
# Input Format
# Three integers, each on a new line.
# Constraints
# The sum of any two sides will be greater than the third.
# Output Format
# One word: either "SCALENE" or "EQUILATERAL" or "ISOSCELES" (quotation marks excluded).

echo "Enter the length of the first side:"
read side1

echo "Enter the length of the second side:"
read side2

echo "Enter the length of the third side:"
read side3

# Check if input values are positive integers
if ! [[ $side1 =~ ^[1-9][0-9]*$ ]] || ! [[ $side2 =~ ^[1-9][0-9]*$ ]] || ! [[ $side3 =~ ^[1-9][0-9]*$ ]]; then
    echo "Please enter positive integers for side lengths."
    exit 1
fi

# Check if the triangle satisfies the triangle inequality theorem
if [ $((side1 + side2)) -le $side3 ] || [ $((side2 + side3)) -le $side1 ] || [ $((side1 + side3)) -le $side2 ]; then
    echo "Not a valid triangle. The sum of any two sides must be greater than the third side."
    exit 1
fi

# Check if the triangle is equilateral, isosceles, or scalene
if [ $side1 -eq $side2 ] && [ $side2 -eq $side3 ]; then
   echo "EQUILATERAL"
elif [ $side1 -eq $side2 ] || [ $side1 -eq $side3 ] || [ $side2 -eq $side3 ]; then
   echo "ISOSCELES"
else
   echo "SCALENE"
fi