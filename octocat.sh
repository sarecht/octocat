#!/bin/bash
#Defining variables in the beginning: making unique identifiers for each user, creating variables for timestamp
ID=`python -c 'import uuid; print str(uuid.uuid1())'`
time=`(date)`

#Say hello
echo "Hello, I have questions for you!"

#Ask for a name
echo "What is your name?"
read varname

#Ask for age
echo "How old are you?"
read varage
echo "You are $varage years old!"

#Ask for class standing
echo "What is your class standing (freshman, grad, etc.)?"
read varclass
echo "Your class standing is $varclass!"

#Ask for favorite animal
echo "What is your favorite animal?"
read varanim
echo "Your favorite animal is $varanim!"

#Ask for favorite color
echo "What is your favorite color?"
read varcol
echo "Your favorite color is $varcol!"

#Give the date
printf "Today is %s\n" "$(date)"

#Print unique identifier last
echo "User ID = $ID"

#Put it all in a .csv file
answers=`echo "$varname,$varage,$varclass,$varanim,$varcol,$(date),$ID"`
echo "$answers" >> data.csv

#Say goodbye
echo "Thank you for your answers! Goodbye!"




