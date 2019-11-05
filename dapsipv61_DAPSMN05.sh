echo "########################################"
echo "### DAPS IVP6_5 DAPSMN05 By KINGer-C ###"
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
sudo cp /usr/local/bin/dapscoind /usr/local/bin/dapscoind05
sudo cp /usr/local/bin/dapscoin-cli /usr/local/bin/dapscoin-cli05
sudo chmod +x /usr/local/bin/daps*

echo "Enter your IPV6 for the DAPSMN05"
read IP
echo "Enter your masternode private key for node DAPSMN05"
read PRIVKEY

CONF_DIR=~/.dapscoin05/
CONF_FILE=dapscoin.conf
PORT=53578

mkdir -p $CONF_DIR
echo "rpcuser=DAPSMN05" >> $CONF_DIR/$CONF_FILE
echo "rpcpassword=DAPSMN050" >> $CONF_DIR/$CONF_FILE
echo "rpcport=53578" >> $CONF_DIR/$CONF_FILE
echo "rpcallowip=127.0.0.1" >> $CONF_DIR/$CONF_FILE
echo "server=1" >> $CONF_DIR/$CONF_FILE
echo "listen=0" >> $CONF_DIR/$CONF_FILE
echo "daemon=1" >> $CONF_DIR/$CONF_FILE
echo "logtimestamps=1" >> $CONF_DIR/$CONF_FILE
echo "maxconnections=64" >> $CONF_DIR/$CONF_FILE
echo "masternode=1" >> $CONF_DIR/$CONF_FILE
echo "externalip=[$IP]" >> $CONF_DIR/$CONF_FILE
echo "bind=[$IP]:53572" >> $CONF_DIR/$CONF_FILE
echo "masternodeaddr=[$IP]:53572" >> $CONF_DIR/$CONF_FILE
echo "masternodeprivkey=$PRIVKEY" >> $CONF_DIR/$CONF_FILE
echo "datadir=/root/.dapscoin05" >> $CONF_DIR/$CONF_FILE
echo "wallet=wallet05.dat" >> $CONF_DIR/$CONF_FILE
echo "addnode=80.79.194.69:53572" >> $CONF_DIR/$CONF_FILE
echo "addnode=212.237.7.86:53572" >> $CONF_DIR/$CONF_FILE
echo "addnode=95.216.152.41:53572" >> $CONF_DIR/$CONF_FILE
echo "addnode=144.202.20.83:53572" >> $CONF_DIR/$CONF_FILE
echo "addnode=51.158.190.147:53572" >> $CONF_DIR/$CONF_FILE

sudo apt-get install fail2ban -y
sudo ufw allow ssh
sudo ufw allow 53574
sudo ufw enable
cd ~
rm -rf dapsipv61_DAPSMN05.sh
sleep 2s
dapscoind05 -datadir=/root/.dapscoin05 -wallet=wallet05.dat
echo " FINISH :)"
echo "####### DAPS - PRIVACITY MATERS #######"
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
watch dapscoin-cli05 -rpcuser=DAPSMN05 -rpcpassword=DAPSMN050 -rpcport=53578 getinfo
