#!/bin/sh
clear
echo "Starting DAPS Masternode download and install..."
echo "Updating/Upgrading OS..."
sudo apt-get install unzip && sudo apt-get  update && sudo apt-get  upgrade -y
sudo fallocate -l 8G /swapfile && chmod 600 /swapfile && mkswap /swapfile && swapon /swapfile && echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab && free -h
sudo apt-get install fail2ban -y
sudo ufw allow ssh
sudo ufw allow 53572
sudo ufw allow 53573
sudo ufw allow 53574
sudo ufw allow 53575
sudo ufw allow 53576
sudo ufw allow 53577
sudo ufw allow 53578
sudo ufw allow 53579
sudo ufw allow 53580
sudo ufw allow 53581
sudo ufw enable
echo "Downloading latest build..."
wget -N https://github.com/DAPSCoin/DAPSCoin/releases/download/1.0.3/master_linux-v1.0.3.4.zip
echo "Installing unzip..."
sudo apt-get install unzip -y
echo "Unzipping latest zip..."
sudo unzip -jo master_linux-v1.0.3.4.zip -d /usr/local/bin
echo "Creating copies of dapscoind..."
sudo cp /usr/local/bin/dapscoind /usr/local/bin/dapscoind00
sudo cp /usr/local/bin/dapscoind00 /usr/local/bin/dapscoind01
sudo cp /usr/local/bin/dapscoind00 /usr/local/bin/dapscoind02
sudo cp /usr/local/bin/dapscoind00 /usr/local/bin/dapscoind03
sudo cp /usr/local/bin/dapscoind00 /usr/local/bin/dapscoind04
sudo cp /usr/local/bin/dapscoind00 /usr/local/bin/dapscoind05
sudo cp /usr/local/bin/dapscoind00 /usr/local/bin/dapscoind06
sudo cp /usr/local/bin/dapscoind00 /usr/local/bin/dapscoind07

echo "Creating copies of dapscoin-cli..."
sudo cp /usr/local/bin/dapscoin-cli /usr/local/bin/dapscoin-cli00
sudo cp /usr/local/bin/dapscoin-cli00 /usr/local/bin/dapscoin-cli01
sudo cp /usr/local/bin/dapscoin-cli00 /usr/local/bin/dapscoin-cli02
sudo cp /usr/local/bin/dapscoin-cli00 /usr/local/bin/dapscoin-cli03
sudo cp /usr/local/bin/dapscoin-cli00 /usr/local/bin/dapscoin-cli04
sudo cp /usr/local/bin/dapscoin-cli00 /usr/local/bin/dapscoin-cli05
sudo cp /usr/local/bin/dapscoin-cli00 /usr/local/bin/dapscoin-cli06
sudo cp /usr/local/bin/dapscoin-cli00 /usr/local/bin/dapscoin-cli07

sudo chmod +x /usr/local/bin/daps*
echo "Creating .dapscoin directories..."
mkdir ~/.dapscoin00
mkdir ~/.dapscoin01
mkdir ~/.dapscoin02
mkdir ~/.dapscoin03
mkdir ~/.dapscoin04
mkdir ~/.dapscoin05
mkdir ~/.dapscoin06
mkdir ~/.dapscoin07
cd ~/.dapscoin && vi dapscoin.conf
cd ~/.dapscoin01 && wget https://raw.githubusercontent.com/KINGer-C/Scripts/master/dapscoin.conf 
cd ~/.dapscoin02 && wget https://raw.githubusercontent.com/KINGer-C/Scripts/master/dapscoin.conf 
cd ~/.dapscoin03 && wget https://raw.githubusercontent.com/KINGer-C/Scripts/master/dapscoin.conf 
cd ~/.dapscoin04 && wget https://raw.githubusercontent.com/KINGer-C/Scripts/master/dapscoin.conf 
cd ~/.dapscoin05 && wget https://raw.githubusercontent.com/KINGer-C/Scripts/master/dapscoin.conf 
cd ~/.dapscoin06 && wget https://raw.githubusercontent.com/KINGer-C/Scripts/master/dapscoin.conf 
cd ~/.dapscoin07 && wget https://raw.githubusercontent.com/KINGer-C/Scripts/master/dapscoin.conf 
echo "Cleaning up..."
cd
rm -rf master_linux-v1.0.3.4.zip
rm -rf dapsipv6.sh
echo "DAPS Masternode installed succesfully!"
