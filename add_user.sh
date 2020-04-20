#!


#make sure the script is being executed with supersuser prvileges.

echo "your UID is ${UID}"

if [[ "${UID}" -ne 0 ]]
then 
	echo 'please execute with sudo or root permisions'
	exit 1
fi

#get the username(login)
read -p 'enter the username to create: ' USER_NAME

#Get the real name (contents for the description field)
read -p 'enter the name of the person who ths account is for: ' COMMENT

#get the password
read -p 'enter the password to use for that account: '  PASSWORD

#Create the account
useradd -c "${COMMENT}" -m ${USER_NAME}

#check to see if the useradd command succeeded
#we do not want to tell the user that an account was created when it has not been 

if [[ "${?}" -ne 0 ]]
then 
	echo 'the id command did not execute'
	exit 1
fi

#set the password
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

#check if the password command ended okay
if [[ "${?}" -ne 0 ]]
then 
    echo 'the password for the account could not be set '
	exit 1
fi



#force password chnage on first login
passwd -e ${USER_NAME}

if [[ "${?}" -ne 0 ]]
then 
   echo 'ended not okay'
fi


#show password, username and host
echo 
echo 'username'
echo "${USER_NAME}"
echo 'password'
echo "${PASSWORD}"
echo 'host'
echo "${HOSTNAME}"
exit 0 

