# Write a multi-line comment with your name, favorite food, and dream job on 3 different lines.
'''
My name is Dante.
Seafood is my favorite food.
Cyber security defense analyst is my dream job.)
'''
# assign 5 different data types to 5 different variables. At least one datatype must be a string.
Integer=15
float=68.7
string="I AM SWOLE"
boolean=True
list=[1,2,3,4,5]

# print the length of your string.
print(len(list))

# create a new variable called savvy, and assign it the string with this phrase "Learning Python is Awesome!"
savvy = "Learning Python is Awesome!"
# Replace "Awesome" with "great" in the string
new_savvy = savvy.replace("Awesome, great", "Replacement String")
print(new_savvy)
# Create and assign 3 more variables called name, age and length using the multi-variable naming method.
name, age, length = "Dante", 36, 70

# Format a new string called 'miniBio' using variables in curly brackets to complete this phrase... "Hi my name is (name), I am (tall) and (so) old today."
miniBio=(f"Hi my name is {name}, I am {length}, and I am {age} old today")
print(miniBio)

# Create a list of at least 5 elements of mixed data types
list=[6, "python", {"Dante":36}, 3.14]
# replace a part of it with something else
list[2]="age"
print(list)
# append or insert several more items to the list
list.append(23)
list.insert(1, True)
# find and print the length of the list
print(len(list))
# slice a sub-section of the 1st list, and save it to a different 2nd list
list2=list[1:2]
# print the 2nd list
print(list2)
# extend your original list with the 2nd list sliced above
list1=list2[1:2]
# Create a new list called "simList" containing at least 5 elements of the same data type, either string, integer, float, or Boolean.
simlist=[11, 71, 1, 23, 42]
# sort "simList", and print the list
simlist.sort()
print(simlist)
# copy the "simList" list to another 3rd list
list3=simlist.copy()
# add the 2nd and 3rd lists together into a 4th list
list4=list2