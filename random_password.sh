#!/bin/bash


#this script genereate random password



#a Random number as a password

PASSWORD="${RANDOM}"
echo "${PASSWORD}"


#three random numbers rogther
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}"


#user the current date/time as the basis for the passwrod


PASSWORD=$(date +%s)
echo "${PASSWORD}"


#User nanoseconds to act as a randomization
PASSWORD=$(date +%s%N)
echo "${PASSWORD}"



# A better password

PASSWORD=$(date +%s%N | sha256sum | head -c32)
echo ${PASSWORD}


#an even btter password
S='!@#$%^&'
echo "${S}"  | fold -w1 | shuf | head -c6


SPECIAL_CHAR=$(echo '!@#$$%5' | fold -w1 | shuf | head -c1)
echo ${PASSWORD}${SPECIAL_CHAR}



