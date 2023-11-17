#!/bin/bash
# Take care to only perform this operation in user-created directories. Changing permissions in system files/directories is not advised, as this can cause malfunctions in the OS.

# Create a new bash script that performs the following:

# Prompts user for input directory path.
# Prompts user for input permissions number (e.g. 777 to perform a chmod 777)
# Navigates to the directory input by the user and changes all files inside it to the input setting.
# Prints to the screen the directory contents and the new permissions settings of everything in the directory or file you selected.

user=y
while [ "$user" = "y" ]
do
echo "Please make a selection"
echo "1 for Test 1 Directory"
echo "2 for Test 2 Directory"
read input
    if [ $input = 1 ]
        then
            echo "Enter T7 to give all perms to all files"
            echo "Enter T6 to give owner read/write, groups read or write"
            read number
            if [ $number = T7 ]
                then
                    chmod 777 -R Test
                    ls -la
                elif [ $number = T6 ]
                    then    
                        cd 'Unit 104'
                        chmod 644 -r /CyberBCoct23/'Unit 103'
                        ls -la
                    fi
                fi
            echo "Do you want to continue (y/n)?"
            read user
        done
        