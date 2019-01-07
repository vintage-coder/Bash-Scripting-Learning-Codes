
#This is for printing the current file name
echo "The file name is:$0";

#This is for printing the Total no of arguments passed
echo "The Total number of arguments passed:$#";
echo "Directory Manipulation Project";

#function for creating directory
function create(){
	echo -n "Enter the Directory name you want to create:";
	read name
	if [ -d $name ]
	then
		echo "The Directory already exists";
	else
		mkdir $name
		echo "The Directory was created.......";
	fi

}

#function for deleting directory
function delete(){
	echo -n "Enter the Directory name you want to delete:";
	read name
	if [ -d $name ]
	then
		rmdir $name
		echo "The Directory was Removed...";
	else
		echo "The Directory not exists";
	fi

}

#Function for renaming the directory
function rename(){
	echo -n "Enter the Directory you want to rename:";
	read name
	echo -n "Enter the New name:";
	read newname
	if [ -d $name ]
	then
		mv $name $newname
		echo "The Directory was renamed";
	else
		echo "The Directory not exists";
	fi

}

echo "1.Create a Directory";
echo "2.Delete a Directory";
echo "3.Rename a Directory";

#This below statement will read value from the user
echo -n "Enter the choice to perform action:";
read choice

#Checking the choice was entered if not the ternminal will exit
if [ -z $choice ]
then
	echo "You must specify the name!";
	exit 0
fi

#This is the switch case statement will select the function depending on the choice by the user made

case $choice in
	1)
		create
		;;
		
	2)
		delete
		;;
	3)
		rename
		;;
		
	*)
		echo "Invalid choice please choose the correct option...";;

esac

#This statement will check the exit status of statement
echo "The exit status is :$?";
	