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
echo "#                    Type -> 16 <- to Ubuntu 16 release                           #"
echo "#                    Type -> 18 <- to Ubuntu 18 resease                           #"
echo "###################################################################################"
read choise
clear
echo "Downloading latest build..."
sleep 1s
echo " The Default directory is /usr/local/bin"
sleep 1s
if [ $choise = '16' ]; then
  wget https://github.com/PawcoinNew/Pawcoin/releases/download/1.0/Pawcoinv1.0-Ubuntu16.tar.gz && sudo tar xvzf Pawcoinv1.0-Ubuntu16.tar.gz -C /usr/local/bin && sudo chmod +x /usr/local/bin/pawcoin*
elif [ $choise = '18' ]; then
  wget https://github.com/PawcoinNew/Pawcoin/releases/download/1.0/Pawcoinv1.0.Ubuntu18.tar.gz && sudo tar xvzf Pawcoinv1.0.Ubuntu18.tar.gz -C /usr/local/bin && sudo chmod +x /usr/local/bin/pawcoin*
else
  echo "That is not a valid option, Please try again" 
  exit -1
fi
sleep 1s
echo "done"
sleep 1s
clear 
echo "Removing old files...."
rm -rf Pawcoinv1.0-Ubuntu16.tar.gz Pawcoinv1.0-Ubuntu18.tar.gz
sleep 1s
echo "done"
sleep 1s
clear
while :
do
echo "###################################################################################"
echo "#                                WHAT DO YOU WANNA DO?                            #"
echo "###################################################################################"
echo "# u - update and upgrade ( recomended once)   # s2 - swap 2Gb memory              #"
echo "# s4 - Swap 4Gb memory                        # s6 - Swap 6gb memory              #"
echo "# i - Get ip information                      # c - Continue instalation          #"
echo "###################################################################################"
read option
if [ $choise = 'u' ]; then
  sudo apt-get install unzip && sudo apt-get update && sudo apt-get  upgrade -y
elif [ $option = 's4' ]; then
  sudo fallocate -l 4G /swapfile && chmod 600 /swapfile && mkswap /swapfile && swapon /swapfile && echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab && free -h
elif [ $option = 's2' ]; then
  sudo fallocate -l 2G /swapfile && chmod 600 /swapfile && mkswap /swapfile && swapon /swapfile && echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab && free -h
elif [ $option = 's6' ]; then
  sudo fallocate -l 6G /swapfile && chmod 600 /swapfile && mkswap /swapfile && swapon /swapfile && echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab && free -h
elif [ $option = 'c' ]; then
     break
elif [ $option = 'i' ]; then
  ifconfig
fi
done
echo "Removing old directories"
rm -rf ~/.pawcoin/
sleep 1s
echo "done"
sleep 1s
clear
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
