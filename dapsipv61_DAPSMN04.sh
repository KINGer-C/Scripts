echo "########################################"
echo "### DAPS IVP6_4 DAPSMN04 By KINGer-C ###"
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
sudo cp /usr/local/bin/dapscoind /usr/local/bin/dapscoind04
sudo cp /usr/local/bin/dapscoin-cli /usr/local/bin/dapscoin-cli04
sudo chmod +x /usr/local/bin/daps*

echo "Enter your IPV6 for the DAPSMN04"
read IP
echo "Enter your masternode private key for node DAPSMN04"
read PRIVKEY

CONF_DIR=~/.dapscoin04/
CONF_FILE=dapscoin.conf
PORT=53577

mkdir -p $CONF_DIR
echo "rpcuser=DAPSMN04" >> $CONF_DIR/$CONF_FILE
echo "rpcpassword=DAPSMN040" >> $CONF_DIR/$CONF_FILE
echo "rpcport=53577" >> $CONF_DIR/$CONF_FILE
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
echo "datadir=/root/.dapscoin04" >> $CONF_DIR/$CONF_FILE
echo "wallet=wallet04.dat" >> $CONF_DIR/$CONF_FILE
echo "addnode=80.79.194.69:53572" >> $CONF_DIR/$CONF_FILE
echo "addnode=212.237.7.86:53572" >> $CONF_DIR/$CONF_FILE
echo "addnode=95.216.152.41:53572" >> $CONF_DIR/$CONF_FILE
echo "addnode=144.202.20.83:53572" >> $CONF_DIR/$CONF_FILE
echo "addnode=51.158.190.147:53572" >> $CONF_DIR/$CONF_FILE

sudo apt-get install fail2ban -y
sudo ufw allow ssh
sudo ufw allow 53577
sudo ufw enable
cd ~
rm -rf dapsipv61_DAPSMN04.sh
sleep 2s
dapscoind04 -datadir=/root/.dapscoin04 -wallet=wallet04.dat
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
watch dapscoin-cli04 -rpcuser=DAPSMN04 -rpcpassword=DAPSMN040 -rpcport=53577 getinfo
