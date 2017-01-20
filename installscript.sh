apt-get update && apt-get upgrade -y  

# Now we are going to upgrade the distribution, Raspbian, software. To ensure that our operating system is fully up to date. In the terminal type.
apt-get update && apt-get dist-upgrade  

# Once completed and the terminal is returned to you enter the next command to install the HTTPS transport package to enable access to HTTPS content over the Internet.
apt-get install apt-transport-https -y

# Next we shall download a key that will authenticate our downloads to ensure they are safe
apt-get install -y wget
wget -O - https://dev2day.de/pms/dev2day-pms.gpg.key  | apt-key add -  

# With the key downloaded we now add a new repository to our list, this repository is provided by dev2day.de who has worked on the packages that will power our Plex install.
echo "deb https://dev2day.de/pms/ jessie main" | tee /etc/apt/sources.list.d/pms.list  

# We now update our list again, to ensure that we now have the latest updates for the Plex Media Server.
apt-get update  

# Lastly we install the Plex Media Server software.
apt-get install -t jessie plexmediaserver -y  

