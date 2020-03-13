clear
echo "#############################"
echo "### PAWS IVP4 By KINGer-C ###"
echo "#############################"
sleep 2s
clear
echo "░░░░░▄▄▀▀▀▀▀▀▀▀▀▄▄░░░░░"
echo "░░░░█░░░░░░░░░░░░░█░░░░"
echo "░░░█░░░░░░░░░░▄▄▄░░█░░░"
echo "░░░█░░▄▄▄░░▄░░███░░█░░░"
echo "░░░▄█░▄░░░▀▀▀░░░▄░█▄░░░"
echo "░░░█░░▀█▀█▀█▀█▀█▀░░█░░░"
echo "░░░▄██▄▄▀▀▀▀▀▀▀▄▄██▄░░░"
echo "░▄█░█▀▀█▀▀▀█▀▀▀█▀▀█░█▄░"
echo "▄▀░▄▄▀▄▄▀▀▀▄▀▀▀▄▄▀▄▄░▀▄"
echo "█░░░░▀▄░█▄░░░▄█░▄▀░░░░█"
echo "░▀▄▄░█░░█▄▄▄▄▄█░░█░▄▄▀░"
echo "░░░▀██▄▄███████▄▄██▀░░░"
echo "░░░████████▀████████░░░"
echo "░░▄▄█▀▀▀▀█░░░█▀▀▀▀█▄▄░░"
echo "░░▀▄▄▄▄▄▀▀░░░▀▀▄▄▄▄▄▀░"
sleep 3s
clear
echo "Downloading latest build..."
wget -N https://github.com/KINGer-C/Scripts/releases/download/pawcoin-kinger/headless.zip
echo "Installing unzip..."
sudo apt-get install unzip -y
echo "Unzipping latest zip..."
sudo unzip -jo headless.zip -d /usr/local/bin
echo "Giving permissions...."
sudo chmod +x /usr/local/bin/pawcoin*
echo "Removing old files"
rm -rf headless.zip
rm -rf ~/.pawcoin/
echo "Enter your IPV4 for the PAWCOIN MASTER NODE"
read IP
echo "Enter your masternode private key for node"
read PRIVKEY

CONF_DIR=~/.pawcoin/
CONF_FILE=pawcoin.conf
PORT=8322

mkdir -p $CONF_DIR
echo "rpcuser=PAWCOIN00" >> $CONF_DIR/$CONF_FILE
echo "rpcpassword=PAWCOIN000" >> $CONF_DIR/$CONF_FILE
echo "rpcallowip=127.0.0.1" >> $CONF_DIR/$CONF_FILE
echo "rpcport=8321" >> $CONF_DIR/$CONF_FILE
echo "listen=1" >> $CONF_DIR/$CONF_FILE
echo "server=1" >> $CONF_DIR/$CONF_FILE
echo "daemon=1" >> $CONF_DIR/$CONF_FILE
echo "logtimestamps=1" >> $CONF_DIR/$CONF_FILE
echo "maxconnections=16" >> $CONF_DIR/$CONF_FILE
echo "masternode=1" >> $CONF_DIR/$CONF_FILE
echo "port=8322" >> $CONF_DIR/$CONF_FILE
echo "masternodeaddr=$IP:$PORT" >> $CONF_DIR/$CONF_FILE
echo "masternodeprivkey=$PRIVKEY" >> $CONF_DIR/$CONF_FILE

sudo apt-get install fail2ban -y
sudo ufw allow ssh
sudo ufw allow 8321
sudo ufw allow 8322
sudo ufw enable
sleep 2s
clear
pawcoind
echo " FINISH :)"
sleep 10s
watch pawcoin-cli getinfo
