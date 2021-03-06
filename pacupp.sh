echo ""
echo "#################################################"
echo "#   Welcome to the PACGlobal Masternode update  #"
echo "#################################################"
echo " Stoping wallet"
cd ~/PACGlobal && ./pacglobal-cli stop
sleep 10s
echo "DONE"
cd ~
echo "Stoping pacg.service"
systemctl stop pacg.service
sleep 5s
echo "DONE"
echo "Disabling pacg.service"
systemctl disable pacg.service
sleep 5s
echo "DONE"
echo "Deleting pacg.service"
rm -rf /etc/systemd/system/pacg.service
sleep 7s
echo "DONE"
echo "Deleting PACGlobal files"
rm -rf PACGblobal
sleep 10s
echo "DONE"
cd ~
echo ""
echo "###############################"
echo "#  Installing Dependencies    #"
echo "###############################"
echo ""
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
rm -rf ~/PACGblobal/pacglobald
rm -rf ~/PACGblobal/pacglobal-cli
rm -rf ~/PACGblobal/pacglobal-qt
rm -rf ~/PACGblobal/pacglobal-tx
rm -rf PACGblobal
sleep 10s
set -e
cd ~
wget https://github.com/PACGlobalOfficial/PAC/releases/download/8f4ed61d4/pacglobal-v0.14.0.4-8f4ed61d4-lin64.tgz
echo ""
echo "###############################"
echo "#      Get/Setup binaries     #"
echo "###############################"
echo ""
tar -xzvf pacglobal-v0.14.0.4-8f4ed61d4-lin64.tgz
rm -rf pacglobal-v0.14.0.4-8f4ed61d4-lin64.tgz
mv -vf pacglobal-v0.14.0.4-8f4ed61d4-lin64 PACGlobal
cd PACGlobal
	chmod +x pacglobald
	chmod +x pacglobal-cli
echo "Binaries were saved to: /root/PACGlobal"
cd ~
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
