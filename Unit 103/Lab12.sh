#!/bin/bash
# Today we are going to use a case statment instead of a conditional
# Have the program ask how your day is and echo out a response for good or bad
# Case statment format is a little different so please look up how this would be formated

echo "How is your day today? (good/bad)"
read response
case $response in
    good)
        echo "That's great to hear! Keep up the good mood!"
        ;;
    bad)
        echo "I'm sorry to hear that. Hopefully, things get better soon."
esac