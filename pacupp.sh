#!/bin/bash

set -e

export LC_ALL="en_US.UTF-8"

binary_url="https://github.com/PACGlobalOfficial/PAC/releases/download/035d4df02/pacglobal-035d4df02-lin64.tgz"
file_name="pacglobal-035d4df02-lin64"
extension=".tgz"

echo ""
echo "#################################################"
echo "#   Welcome to the PACGlobal Masternode Setup   #"
echo "#################################################"
echo ""
cd ~/PACGlobal && ./pacglobal-cli stop
sleep 10s
echo ""
echo "###############################"
echo "#  Installing Dependencies    #"
echo "###############################"
echo ""
echo "Running this script on Ubuntu 18.04 LTS or newer is highly recommended."

sudo apt-get -y install git python virtualenv ufw pwgen

echo ""
echo "###############################"
echo "#   Setting up the Firewall   #"
echo "###############################"
sudo ufw status
sudo ufw disable
sudo ufw allow ssh/tcp
sudo ufw limit ssh/tcp
sudo ufw allow 7112/tcp
sudo ufw logging on
sudo ufw --force enable
sudo ufw status
sudo iptables -A INPUT -p tcp --dport 7112 -j ACCEPT

echo ""
echo "###############################"
echo "#      Get/Setup binaries     #"
echo "###############################"
echo ""
wget $binary_url
if test -e "$file_name$extension"; then
echo "Unpacking PACGlobal distribution"
	tar -xzvf $file_name$extension
	rm -r $file_name$extension
	mv -v $file_name PACGlobal
	cd PACGlobal
	chmod +x pacglobald
	chmod +x pacglobal-cli
	echo "Binaries were saved to: /root/PACGlobal"
else
	echo "There was a problem downloading the binaries, please try running the script again."
	exit -1
fi

echo ""
echo "#######################################"
echo "#      Creating systemctl service     #"
echo "#######################################"
echo ""

cat <<EOF > /etc/systemd/system/pacg.service
[Unit]
Description=PAC Global daemon
After=network.target
[Service]
User=root
Group=root
Type=forking
PIDFile=/root/.PACGlobal/pacglobal.pid
ExecStart=/root/PACGlobal/pacglobald -daemon -pid=/root/.PACGlobal/pacglobal.pid \
          -conf=/root/.PACGlobal/pacglobal.conf -datadir=/root/.PACGlobal/
ExecStop=-/root/PACGlobal/pacglobal-cli -conf=/root/.PACGlobal/pacglobal.conf \
          -datadir=/root/.PACGlobal/ stop
Restart=always
PrivateTmp=true
TimeoutStopSec=60s
TimeoutStartSec=2s
StartLimitInterval=120s
StartLimitBurst=5
[Install]
WantedBy=multi-user.target
EOF

#enable the service
systemctl enable pacg.service
echo "pacg.service enabled"

#start the service
systemctl start pacg.service
echo "pac.g service started"


echo ""
echo "###############################"
echo "#      Running the wallet     #"
echo "###############################"
echo ""
cd ~/PACGlobal
sleep 10s

is_pac_running=`ps ax | grep -v grep | grep pacglobald | wc -l`
if [ $is_pac_running -eq 0 ]; then
	echo "The daemon is not running or there is an issue, please restart the daemon!"
	exit
fi

cd ~/PACGlobal
./pacglobal-cli getinfo

echo ""
echo "Your masternode server is ready!"
