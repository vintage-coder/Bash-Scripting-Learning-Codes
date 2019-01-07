#! /bin/bash

echo "==============Bash Scripting===================";

printf "This is the project directory to solve problems\n"

echo "Enter the directory name you want to create"
read val

#Checking the dirctory exists is or not
if [ -d $val ]
then
	echo "The directory already exsists"
else
	echo "The directory is not exists"
	echo "Making of directory........."
	sleep 5
	mkdir $val
	printf "The $val directory was created \n"
fi

#Checking the exists status
echo "The exists status is $?"

#This is another  printing on the console func
printf "Enter the directory name you want to drop:"
read num

if [ -d $num ]
then
	#Removing the directory forcibly
	rm -rf $num
	echo "The dirctory was deleted"
else
	echo "The dirctory was not present there..."
fi

echo "The exist status is  $?"

echo "checking the file exists or not"

printf "Enter the file name:"
read num

#Checking the file name exists is or not
if [ -e $num ]
then 
	echo "The file already exists"
else
	echo "The file not exists";
	#This will create the file name statement
	touch $num
	echo "The file creating........"
	sleep 5
fi

printf "The exists status $?"

echo "Testing...."
echo "The file name is:$0"
#This is printing the current process id $$
echo "The pid of the current process is :$$"

#while loop for counting
while ((count<=10))
do
	((count++))
	echo "The count is incrementing $count "
	sleep 5 
done


echo "The exists status is $?"

#This command exit the terminal or killing the terminal
exit 0



















