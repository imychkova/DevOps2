#!/bin/bash

# Display the OS version
echo "OS Version:"
uname -a
echo ""

# Display all users with bash shell
echo "Users with bash shell:"
grep "/bash" /etc/passwd | cut -d: -f1
echo ""

# Display open ports
echo "Open ports:"
sudo lsof -i -P -n | grep LISTEN