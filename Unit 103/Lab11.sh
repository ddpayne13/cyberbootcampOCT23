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

read side1
read side2
read side3

# Check if it forms a valid triangle
if [ $((side1 + side2)) -gt $side3 ] && [ $((side2 + side3)) -gt $side1 ] && [ $((side1 + side3)) -gt $side2 ]; then
    # Check type of triangle
    if [ $side1 -eq $side2 ] && [ $side2 -eq $side3 ]; then
        echo "EQUILATERAL"
    elif [ $side1 -eq $side2 ] || [ $side1 -eq $side3 ] || [ $side2 -eq $side3 ]; then
        echo "ISOSCELES"
    else
        echo "SCALENE"
    fi
else
    echo "Not a valid triangle"
fi