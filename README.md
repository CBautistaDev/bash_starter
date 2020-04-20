# BashAddUser
# Create a Virtual Machine:
cd shellclass
mkdir localusers
cd localusers
vagrant init jasonc/centos7

# Configure the Virtual Machine
config.vm.hostname = "localusers"

# Start the Virtual Machine and Log into It
vagrant up
vagrant ssh

chmod 755 add_user.sh

Make sure the script is being executed with superuser privileges.
 Get the username (login).
 Get the real name (contents for the description field).
 Get the password.
 Create the user with the password.
 Check to see if the useradd command succeeded.
 Set the password.
 Check to see if the passwd command succeeded.
 Force password change on first login.
 Display