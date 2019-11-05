echo "#############################"
echo "### DAPS IVP4 By KINGer-C ###"
echo "#############################"
sleep 3s
echo "Downloading latest build..."
wget -N https://github.com/DAPSCoin/DAPSCoin/releases/download/1.0.3/master_linux-v1.0.3.4.zip
echo "Installing unzip..."
sudo apt-get install unzip -y
echo "Unzipping latest zip..."
sudo unzip -jo master_linux-v1.0.3.4.zip -d /usr/local/bin
sudo chmod +x /usr/local/bin/daps*
rm -rf master_linux-v1.0.3.4.zip

echo "Enter your IPV4 for the DAPSMN00"
read IP
echo "Enter your masternode private key for node DAPSMN00"
read PRIVKEY

CONF_DIR=~/.dapscoin/
CONF_FILE=dapscoin.conf
PORT=53572

mkdir -p $CONF_DIR
echo "rpcuser=DAPSMN00" >> $CONF_DIR/$CONF_FILE
echo "rpcpassword=DAPSMN000" >> $CONF_DIR/$CONF_FILE
echo "rpcallowip=127.0.0.1" >> $CONF_DIR/$CONF_FILE
echo "server=1" >> $CONF_DIR/$CONF_FILE
echo "daemon=1" >> $CONF_DIR/$CONF_FILE
echo "logtimestamps=1" >> $CONF_DIR/$CONF_FILE
echo "maxconnections=64" >> $CONF_DIR/$CONF_FILE
echo "masternode=1" >> $CONF_DIR/$CONF_FILE
echo "masternodeaddr=$IP:$PORT" >> $CONF_DIR/$CONF_FILE
echo "masternodeprivkey=$PRIVKEY" >> $CONF_DIR/$CONF_FILE
echo "addnode=80.79.194.69:53572" >> $CONF_DIR/$CONF_FILE
echo "addnode=212.237.7.86:53572" >> $CONF_DIR/$CONF_FILE
echo "addnode=95.216.152.41:53572" >> $CONF_DIR/$CONF_FILE
echo "addnode=144.202.20.83:53572" >> $CONF_DIR/$CONF_FILE
echo "addnode=51.158.190.147:53572" >> $CONF_DIR/$CONF_FILE

sudo apt-get install fail2ban -y
sudo ufw allow ssh
sudo ufw allow 53572
sudo ufw allow 53573
sudo ufw enable
sleep 2s
dapscoind -daemon
echo " FINISH :)"
sleep 10s
watch dapscoin-cli getinfo