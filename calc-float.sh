#this program calculates the sum, suptraction, multiplication, division of given 2 numbers.

#Return values
## 0 No errors
## 1 Data type mismatch of the first argument
## 2 Data type mismatch of the second argument
## 3 Division by zero
## 4 Worng number of arguments
##############################################################
#Check the number of arguments
[ $# -ne 2 ] && echo "Wrong number of arguments" && exit 4
#Check if the first and the second arguments are floats
echo $1 |grep -cE "^[0-9]+\.?[0-9]*$" > /dev/null || echo "Data type mismatch of the first argument" ||  exit 1
echo $2 |grep -cE "^[0-9]+\.?[0-9]*$" > /dev/null || echo "Data type mismatch of the second argument" || exit 2
#~~~~~~~~~~~~~~~~~~~~main~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo "$1+$2=$(echo "scale=1;$1+$2" |bc)"
echo "$1-$2=$(echo "scale=1;$1-$2" |bc)"
echo "$1*$2=$(echo "scale=1;$1*$2" |bc)"
[[ $2 == "0" ]]&&echo "Division by zero"&&exit 3
echo "$1/$2=$(echo "scale=1;$1/$2" |bc)"
~

