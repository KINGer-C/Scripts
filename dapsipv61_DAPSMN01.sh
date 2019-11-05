echo "#############################"
echo "### DAPS IVP4 By KINGer-C ###"
echo "#############################"

sleep 3s
echo "#######################################"
echo "  ATENTION!!! ATENTION!!! ATENTION!!!"
echo "#######################################"
echo " YOU MUST HAD BEEN INSTALED"
echo "THE MN IPV4 BEFORE RUNNING THIS SCRYPT"
echo "#######################################"
sleep 3s
echo "Creating copys of executables"
sudo cp /usr/local/bin/dapscoind /usr/local/bin/dapscoind01
sudo cp /usr/local/bin/dapscoin-cli /usr/local/bin/dapscoin-cli01
sudo chmod +x /usr/local/bin/daps*

echo " Creating DAPSMN01 root folder"
mkdir ~/.dapscoin01

echo "Enter your IPV6 for the DAPSMN01"
read IP
echo "Enter your masternode private key for node DAPSMN01"
read PRIVKEY

CONF_DIR=~/.dapscoin/
CONF_FILE=dapscoin.conf
PORT=53574

mkdir -p $CONF_DIR
echo "rpcuser=DAPSMN01" >> $CONF_DIR/$CONF_FILE
echo "rpcpassword=DAPSMN010" >> $CONF_DIR/$CONF_FILE
echo "rpcport=53574" >> $CONF_DIR/$CONF_FILE
echo "rpcallowip=127.0.0.1" >> $CONF_DIR/$CONF_FILE
echo "server=1" >> $CONF_DIR/$CONF_FILE
echo "listen=0" >> $CONF_DIR/$CONF_FILE
echo "daemon=1" >> $CONF_DIR/$CONF_FILE
echo "logtimestamps=1" >> $CONF_DIR/$CONF_FILE
echo "maxconnections=64" >> $CONF_DIR/$CONF_FILE
echo "masternode=1" >> $CONF_DIR/$CONF_FILE
exho "externalip=[$IP]" >> $CONF_DIR/$CONF_FILE
echo "bind=[$IP]:53572" >> $CONF_DIR/$CONF_FILE
echo "masternodeaddr=[$IP]:53572" >> $CONF_DIR/$CONF_FILE
echo "masternodeprivkey=$PRIVKEY" >> $CONF_DIR/$CONF_FILE
echo "datadir=/root/.dapscoin01" >> $CONF_DIR/$CONF_FILE
echo "wallet=wallet01.dat" >> $CONF_DIR/$CONF_FILE
echo "addnode=80.79.194.69:53572" >> $CONF_DIR/$CONF_FILE
echo "addnode=212.237.7.86:53572" >> $CONF_DIR/$CONF_FILE
echo "addnode=95.216.152.41:53572" >> $CONF_DIR/$CONF_FILE
echo "addnode=144.202.20.83:53572" >> $CONF_DIR/$CONF_FILE
echo "addnode=51.158.190.147:53572" >> $CONF_DIR/$CONF_FILE

sudo apt-get install fail2ban -y
sudo ufw allow ssh
sudo ufw allow 53574
sudo ufw enable
sleep 2s
dapscoind01 -datadir=/root/.dapscoin01 -wallet=wallet01.dat
echo " FINISH :)"
sleep 10s
watch dapscoin-cli01 -rpcuser=DAPSMN01 -rpcpassword=DAPSMN010 -rpcport=53574 getinfo
