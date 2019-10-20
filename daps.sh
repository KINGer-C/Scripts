clear
echo "Starting DAPS Masternode download and install..."
echo "Updating/Upgrading OS..."
sudo apt update && sudo apt upgrade -y
echo "Swaping memory"
sudo fallocate -l 8G /swapfile && chmod 600 /swapfile && mkswap /swapfile && swapon /swapfile && echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab && free -h
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install fail2ban -y
sudo ufw allow ssh
sudo ufw allow 53572
sudo ufw allow 53573
sudo ufw enable
echo "Downloading wallet..."
cd /usr/local/bin && wget https://github.com/DAPSCoin/DAPSCoin/releases/download/1.0.2/master_linux-v1.0.2.tar
echo "Done!"
echo "Extracting wallet..."
cd /usr/local/bin && sudo tar -xvf master_linux-v1.0.2.tar
echo "Done!"
echo "Removing old files..."
cd /usr/local/bin && rm -rf master_linux-v1.0.2.tar
echo "Done!"
echo "Set permissions on files..."
cd /usr/local/bin && sudo chmod 777 daps*
sleep 2s 
echo "Creating .dapscoin directory..."
rm -rf ~/.dapscoin
sleep 5s
mkdir ~/.dapscoin
cd ~/.dapscoin
vi dapscoin.conf
cd /usr/local/bin 
./dapscoind -daemon
watch ./dapscoin-cli getinfo
