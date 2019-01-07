#This is the example pracitsing bash scripting
#The quoted command output is stored in the variable
#To printout the value stored in the variable to stdout use $val
val=`ls -l | wc -l`

#outputing to stdout
echo "The no of files in the directory is:$val"

#echo "The file path is:$PATH"

#The name of file is stored in $0
echo "The file name is:$0"

# The no of args is stored in $#
echo "Total no of arguments:$#"

#The first args stored in $1
echo "first argument:$1"

#The second args stored in  $2

echo "second argument:$2"

echo "=====================Case statement begins=========";
#printing without newline
echo -n "Enter your choice:"

#Reading from the user
read choice

#switch case statement
case $choice in
	1)
echo "you got first rank";;
	2)
echo "you got second rank";;
	*)
echo "you are useless"

esac #ending case statement


echo "==================Validation begins=======================";

echo -n "enter the user name"
read username
echo -n "enter the password"
read password


# validating username and password in if else statement
if [[ "$username"==gowthaman && "$password"==123 ]]
then
	echo "you are a valid user"
else
	echo "you are a invalid user check your username or password"

fi


#This is the function in the bash script
function gowthaman(){
	
	val=$[num1+num2]
	#The first value of echo statement is returned to funtion
	echo "$val";
	#This echo statement is printed as itself
	echo "The addition of the number is :$val";
	
}
echo -n "Enter tha name";
read name
echo -n "Enter the two number";
#Reading Two numbers
read num1 num2

#The value returned from the funtion is captured to variable
out=$(gowthaman)

#The captured variable is printed out here
echo "The name returned by the funtion is:$out"

echo "==========directory creation operations =======================";

echo -n "Enter the directory name:"
read name

#The directory exists status is checked using -d flags
if [ -d $name ]
then
	echo "The directory exists"
else
	echo "directory is being created................."
	#This is the sleep statement. it sleeps 10s 
	sleep 5
	#This statement creates the diretory for the given name
	`mkdir $name`
fi
echo "The directory was created"

echo "==========Pattern scripting====================";

echo -n "Enter the number:"
read num
#This is the outer forloop
 for ((i=1;i<=num;i++))
 do 
 	#This is the inner forloop
 	for ((j=1;j<=num;j++))
 	do
 		echo -ne "# \t"; # -n= no new line; -e=enable escape character '\t'
 	done
 	echo "";
 done
















































# function gowthaman(){

# 	echo "Hi gowthaman how are you"
# 	for i in {10..30}
# 	do
# 		echo "The number is:$i"

# 	done

# 	read -p "Enter your name" name
# 	read -p "Enter your age" age

# 	if [ $age -ge 18 ]
# 	then
# 		echo "you are eligible to vote"
# 	elif [ $age -gt 50 ]
# 	then
# 		echo "you are an uncle"
# 	else
# 		echo "you are going to die as soon as possible"
# 	fi

# 	names='Gowthaman Location Downloads Entrepreneur Quit'

# 	PS3='select your options:'

# 	select i in $names
# 	do
# 		if [ $i == 'Quit' ]
# 		then
# 			echo "The operations is going to terminated"
# 			break
# 		fi
# 		echo "Hello $i"
# 	done

# 	echo "until operations"

# 	count=1
# 	until [ $count -gt 10 ]
# 	do 
# 		echo "The number is:$count"
# 		((count++))
# 	done
# 	echo "While operations"	
# 	val=1

# 	while [ $val -lt 10 ]
# 	do 
# 		echo "The val is :$val"
# 		((val++))
# 	done

# 	echo "The name of the person above program entered is $name and his age is $age"


# }




# gowthaman












































# echo "The name of file is :$0"
# echo  "Today date is :`date` "

# echo "The calender is :`cal`"

# echo "The no of file in the directory is `ls -l | wc -l`"
# # echo "===========================DataBase==========================="
# echo "Enter your name :"
# read name

# na=$name
# echo "The name is:$na"
# echo "The name is :$name"
# echo "The arithematic operations..........."

# read -p "Enter the two numbers:" x y

# add=$((x+y))
# sub=$((x-y))
# mul=$((x*y))
# div=$((x/y))
# modu=$((x%y))


# echo "The addition is :$add"
# echo "The substraction is:$sub"
# echo "The multiplication is:$mul"
# echo "The division is:$div"
# echo "The modulo is:$modu"


# names='gowthaman anbarasan amuthan Thilagavathi Quit'

# PS3='select the name'

# select i in $names
# do
# 	if [ $i=='Quit' ]
# 	then
# 		break
# 	fi
# 	echo hello $i
# done






# echo "Enter your age :"
# read age
# echo "Enter the most interested programming language "

# read program
# echo "================================finished =============================="

# if [ $age -eq 0 ]
# then 
# 	echo " age is invalid"
# fi

# if [ $age -lt 6 ]
# then
# 	echo " go to kindergarden"
# elif [ $age -lt 10 ] 
# then
# 	echo "you are a child"
# elif [ $age -lt 16 ] 
# then
# 	echo "you are student"
# elif [ $age -ge 18 ]
# then
# 	echo "you are eligible to vote"
# fi

# echo "==============================candidate============================"

# echo "The name of candidate is:$name"
# echo "The age is:$age"
# echo "The programming language is:$program"

# echo "======================================"




# if [ $1 -gt 0 ]
# then
# 	echo "$1 is greater than zero"

# fi
# this is the comment line for for loop example
# if [ $name == "gowtham" ] 
# then
# 	echo "entered name is equal"

# else
# 	echo "entered name is  not equal"

# fi

# for i in {0..20} 
# do     
# 	if [ $i -eq 5 ] 
# 	then
# 		echo "The value passed"
# 		continue
# 	fi
# 	if [ $i -eq 18 ]
# 	then
# 		echo "This value breaked"
# 		break
	
# 	fi
# 	echo "The values are :$i"
	
# done

echo "The exit status :$?"