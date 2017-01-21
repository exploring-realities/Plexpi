# 1. As with any software tutorial let’s first make sure our Pi is up to date

apt-get update
apt-get upgrade -y

apt-get install -y wget

# 2. We next need to enable the HTTPS transport package so we can access HTTPS packages using apt-get. Enter the following line to download, install & activate it.
apt-get install -y apt-transport-https

# 3. Next we need to add a crypt o key for the dev2day website to our keyring. The | in the following command copies the output from the first command (wget) into the second command (sudo apt-get add – “first command output”).
wget -O - https://dev2day.de/pms/dev2day-pms.gpg.key  | apt-key add -

# 4. Next we need to add the dev2day repository to our package source list. To do this simply enter the following.
echo "deb https://dev2day.de/pms/ jessie main" | tee /etc/apt/sources.list.d/pms.list

# 5. Now we need to update the package list, you can do this by running the following command:
apt-get update

# 6. Now run the following to install the plex media server onto the Raspberry Pi.
apt-get install -y -t jessie plexmediaserver

