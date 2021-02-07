#!/bin/bash -x

declare -a array
 
function generateRandomNumber() {
  for (( counter=1; counter<=10; counter++ ))
do
  randomNumber=$((RANDOM%900+100));
  echo $randomNumber
  storeNumberInArray $randomNumber $((counter + 1))
done

}

function storeNumberInArray() {
  number=$1;
  index=$2;
  array[index]=$number;
}

function printArray() {
echo ${array[@])

getminimummaximum;

echo "minimum : "$minimum ;
echo "second minimum : "$secondminimum ;
echo "maximum : "$maximum ;
echo "secondmaximum : "$secondmaximum ;
fi

}
