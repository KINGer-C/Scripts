echo "########################################"
echo "### DAPS IVP6_3 DAPSMN03 By KINGer-C ###"
echo "########################################"

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
echo "#######################################"
echo "  ATENTION!!! ATENTION!!! ATENTION!!!"
echo "#######################################"
echo " YOU MUST HAD BEEN INSTALED"
echo "THE MN IPV4 BEFORE RUNNING THIS SCRYPT"
echo "#######################################"
sleep 3s
echo "Creating copys of executables"
sudo cp /usr/local/bin/dapscoind /usr/local/bin/dapscoind03
sudo cp /usr/local/bin/dapscoin-cli /usr/local/bin/dapscoin-cli03
sudo chmod +x /usr/local/bin/daps*

echo "Enter your IPV6 for the DAPSMN03"
read IP
echo "Enter your masternode private key for node DAPSMN03"
read PRIVKEY

CONF_DIR=~/.dapscoin03/
CONF_FILE=dapscoin.conf
PORT=53576

mkdir -p $CONF_DIR
echo "rpcuser=DAPSMN03" >> $CONF_DIR/$CONF_FILE
echo "rpcpassword=DAPSMN030" >> $CONF_DIR/$CONF_FILE
echo "rpcport=53576" >> $CONF_DIR/$CONF_FILE
echo "rpcallowip=127.0.0.1" >> $CONF_DIR/$CONF_FILE
echo "server=1" >> $CONF_DIR/$CONF_FILE
echo "listen=0" >> $CONF_DIR/$CONF_FILE
echo "daemon=1" >> $CONF_DIR/$CONF_FILE
echo "logtimestamps=1" >> $CONF_DIR/$CONF_FILE
echo "maxconnections=32" >> $CONF_DIR/$CONF_FILE
echo "masternode=1" >> $CONF_DIR/$CONF_FILE
echo "externalip=[$IP]" >> $CONF_DIR/$CONF_FILE
echo "bind=[$IP]:53572" >> $CONF_DIR/$CONF_FILE
echo "masternodeaddr=[$IP]:53572" >> $CONF_DIR/$CONF_FILE
echo "masternodeprivkey=$PRIVKEY" >> $CONF_DIR/$CONF_FILE
echo "datadir=/root/.dapscoin03" >> $CONF_DIR/$CONF_FILE
echo "wallet=wallet03.dat" >> $CONF_DIR/$CONF_FILE
echo "addnode=95.216.252.153:34536" >> $CONF_DIR/$CONF_FILE
echo "addnode=95.216.84.192:37912" >> $CONF_DIR/$CONF_FILE
echo "addnode=95.217.98.226:40586" >> $CONF_DIR/$CONF_FILE
echo "addnode=95.217.70.158:50228" >> $CONF_DIR/$CONF_FILE
echo "addnode=95.217.70.41:38154" >> $CONF_DIR/$CONF_FILE
echo "addnode=95.216.253.172:48176" >> $CONF_DIR/$CONF_FILE
echo "addnode=113.234.221.75:52758" >> $CONF_DIR/$CONF_FILE
echo "addnode=220.214.11.115:64211" >> $CONF_DIR/$CONF_FILE
echo "addnode=77.161.105.40:55110" >> $CONF_DIR/$CONF_FILE
echo "addnode=89.40.9.159:52800" >> $CONF_DIR/$CONF_FILE
echo "addnode=86.157.160.160:53572" >> $CONF_DIR/$CONF_FILE
echo "addnode=95.216.94.80:39740" >> $CONF_DIR/$CONF_FILE

sudo apt-get install fail2ban -y
sudo ufw allow ssh
sudo ufw allow 53576
sudo ufw enable
cd ~
rm -rf dapsipv61_DAPSMN03.sh
sleep 2s
dapscoind03 -datadir=/root/.dapscoin03 -wallet=wallet03.dat
echo " FINISH :)"
echo "####### DAPS - PRIVACITY MATTERS #######"
echo "███████▓█████▓▓╬╬╬╬╬╬╬╬▓███▓╬╬╬╬╬╬╬▓╬╬▓█"
echo "████▓▓▓▓╬╬▓█████╬╬╬╬╬╬███▓╬╬╬╬╬╬╬╬╬╬╬╬╬█"
echo "███▓▓▓▓╬╬╬╬╬╬▓██╬╬╬╬╬╬▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█" 
echo "████▓▓▓╬╬╬╬╬╬╬▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█" 
echo "███▓█▓███████▓▓███▓╬╬╬╬╬╬▓███████▓╬╬╬╬▓█" 
echo "████████████████▓█▓╬╬╬╬╬▓▓▓▓▓▓▓▓╬╬╬╬╬╬╬█" 
echo "███▓▓▓▓▓▓▓╬╬▓▓▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█" 
echo "████▓▓▓╬╬╬╬▓▓▓▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█" 
echo "███▓█▓▓▓▓▓▓▓▓▓▓▓▓▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█" 
echo "█████▓▓▓▓▓▓▓▓█▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█" 
echo "█████▓▓▓▓▓▓▓██▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██" 
echo "█████▓▓▓▓▓████▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██" 
echo "████▓█▓▓▓▓██▓▓▓▓██╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██" 
echo "████▓▓███▓▓▓▓▓▓▓██▓╬╬╬╬╬╬╬╬╬╬╬╬█▓╬▓╬╬▓██" 
echo "█████▓███▓▓▓▓▓▓▓▓████▓▓╬╬╬╬╬╬╬█▓╬╬╬╬╬▓██" 
echo "█████▓▓█▓███▓▓▓████╬▓█▓▓╬╬╬▓▓█▓╬╬╬╬╬╬███" 
echo "██████▓██▓███████▓╬╬╬▓▓╬▓▓██▓╬╬╬╬╬╬╬▓███" 
echo "███████▓██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓╬╬╬╬╬╬╬╬╬╬╬████" 
echo "███████▓▓██▓▓▓▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓████" 
echo "████████▓▓▓█████▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█████" 
echo "█████████▓▓▓█▓▓▓▓▓███▓╬╬╬╬╬╬╬╬╬╬╬▓██████"
echo "██████████▓▓▓█▓▓▓╬▓██╬╬╬╬╬╬╬╬╬╬╬▓███████" 
echo "███████████▓▓█▓▓▓▓███▓╬╬╬╬╬╬╬╬╬▓████████"
echo "██████████████▓▓▓███▓▓╬╬╬╬╬╬╬╬██████████"
echo "███████████████▓▓▓██▓▓╬╬╬╬╬╬▓███████████"
sleep 10s
watch dapscoin-cli03 -rpcuser=DAPSMN03 -rpcpassword=DAPSMN030 -rpcport=53576 getinfo
