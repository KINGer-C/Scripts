clear
echo "Starting DAPS Masternode download and install..."
echo "Updating/Upgrading OS..."
sudo apt update && sudo apt upgrade -y
sudo fallocate -l 8G /swapfile && chmod 600 /swapfile && mkswap /swapfile && swapon /swapfile && echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab && free -h
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install fail2ban -y
sudo ufw allow ssh
sudo ufw allow 53572
sudo ufw allow 53573
sudo ufw enable
echo "Downloading update..."
cd /usr/local/bin && wget https://github.com/DAPSCoin/DAPSCoin/releases/download/1.0.2/master_linux-v1.0.2.tar
echo "Done!"
echo "Extracting update..."
cd /usr/local/bin && sudo tar -xvf master_linux-v1.0.2.tar
echo "Done!"
echo "Removing old files..."
cd /usr/local/bin && rm -rf master_linux-v1.0.2.tar
echo "Done!"
echo "Set permissions on files..."
cd /usr/local/bin && sudo chmod 777 daps*
sleep 2s 
echo "Creating .dapscoin directory..."
mkdir ~/.dapscoin
cd ~/.dapscoin
vi dapscoin.conf
cd /usr/local/bin 
echo "Stopping dapscoind..."
dapscoin-cli stop
echo "Downloading bootstrap..."
wget https://github.com/DAPSCoin/BootStrap/releases/download/latest/bootstrap.zip
echo "Removing old blocks, chainstate, and database folders...."
rm -rf ~/.dapscoin/blocks ~/.dapscoin/chainstate ~/.dapscoin/database
echo "Installing new blocks folders..."
unzip bootstrap.zip -d ~/.dapscoin
echo "Bootstrap installed!"
./dapscoind -daemon
echo "Adding nodes"
watch ./dapscoin-cli getinfo
