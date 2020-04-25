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
echo "###################################################################################"
echo "#                          WHAT IS YOUR UBUNTU VERSION                            #"
echo "#                    Type 16 to Ubuntu 16 or 18 to Ubuntu 18                      #"
echo "###################################################################################"
read choise
clear
echo "Downloading latest build..."
if [ $choise = 16 ]; then
  wget -N https://github.com/PawcoinNew/Pawcoin/releases/download/1.0/Pawcoinv1.0-Ubuntu16.tar.gz && sudo tar xvzf Pawcoinv1.0-Ubuntu16.tar.gz -C /usr/local/bin && sudo chmod +x /usr/local/bin/pawcoin*
elif [ $choise = 18 ]; then
  wget -N https://github.com/PawcoinNew/Pawcoin/releases/download/1.0/Pawcoinv1.0.Ubuntu18.tar.gz && sudo tar xvzf Pawcoinv1.0.Ubuntu18.tar.gz -C /usr/local/bin && sudo chmod +x /usr/local/bin/pawcoin*
else
  echo "That is not a valid option, Please try again " && exit
echo "Giving permissions...."
echo "Removing old files"
rm -rf Pawcoinv1.0-Ubuntu16.tar.gz Pawcoinv1.0-Ubuntu18.tar.gz
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
