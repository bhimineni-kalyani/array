#!/bin/bash -x

RANDOM_NUMBER=10;

declare -a array;
counter=0;
minimum=1000;
secondMinimum=1000;
maximum=-1;
secondMaximum=-1;

generateRandomNumber () {
	while [ ${#array[@]} -ne $RANDOM_NUMBER ]
	do
		value=$((RANDOM%900+100));
		echo $value;
		storeNumberInArray $value;
	done;
}

storeNumberInArray () {
	value=$1;

	if [[ "${array[*]}" != *"$value"* ]]
   then
      array[counter]=$value;
      ((counter++));
   fi;
}

getMinimumMaximum () {
	for (( i=0; i<${#array[@]}; i++))
	do
		if [ ${array[$i]} -lt $minimum ]
		then
			secondMinimum=$minimum;
			minimum=${array[$i]};
		elif [[ ${array[$i]} -lt $secondMinimum && ${array[$i]} -ne $minimum ]]
		then
			secondMinimum=${array[$i]};
		fi;

		if [ ${array[$i]} -gt $maximum ]
		then
   		secondMaximum=$maximum;
   		maximum=${array[$i]};
		elif [[ ${array[$i]} -gt $secondMaximum && ${array[$i]} -ne $maximum ]]
		then
   		secondMaximum=${array[$i]};
		fi;
	done;
}

generateRandomNumber;
echo ${array[@]};

getMinimumMaximum;

echo "MINIMUM : "$minimum;
echo "SECOND MINIMUM : " $secondMinimum;
echo "MAXIMUM : "$maximum;
echo "SECOND MAXIMUM : "$secondMaximum;
