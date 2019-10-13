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
echo "Downloading latest build..."
wget https://github.com/DAPSCoin/DAPSCoin/releases/download/1.0.1/master_linux-v1.0.1.3.zip
echo "Installing unzip..."
sudo apt-get install unzip -y
echo "Unzipping dapscoin_linux-v1.0.3.zip..."
sudo unzip master_linux-v1.0.1.3.zip -d /usr/local/bin
chmod +x /usr/local/bin/dapscoind
chmod +x /usr/local/bin/dapscoin-cli
chmod +x /usr/local/bin/dapscoin-qt
echo "Creating .dapscoin directory..."
mkdir ~/.dapscoin
cd ~/.dapscoin
touch dapscoin.conf
echo "Editing dapscoin.conf..."
echo "Configuring the dapscoin.conf"
echo "rpcuser=$(pwgen -s 16 1)" > dapscoin.conf
echo "rpcpassword=$(pwgen -s 64 1)" >> dapscoin.conf
echo "rpcallowip=127.0.0.1" >> dapscoin.conf
echo "server=1" >> dapscoin.conf
echo "daemon=1" >> dapscoin.conf
echo "listen=1" >> dapscoin.conf
echo "maxconnections=64" >> dapscoin.conf
echo "masternode=1" >> dapscoin.conf
echo "masternodeaddr=$ipaddr:53572 >> dapscoin.conf
echo "masternodeprivkey=$mnkey" >> dapscoin.conf
echo "Launching dapscoind..."
cd /usr/local/bin 
dapscoind -daemon
echo "Adding nodes"
./dapscoin-cli addnode 46.163.196.103:53572 add 
./dapscoin-cli addnode 212.47.244.107:53572 add
./dapscoin-cli addnode 139.180.173.111:53572 add
./dapscoin-cli addnode 34.66.72.132:53572 add
./dapscoin-cli addnode 104.196.231.205:53572 add
./dapscoin-cli addnode 35.192.110.163:53572 add
./dapscoin-cli addnode 35.225.119.166:53572 add
./dapscoin-cli addnode 34.69.121.145:53572 add
./dapscoin-cli addnode 35.194.2.105:53572 add
./dapscoin-cli addnode 34.82.214.16:53572 add
./dapscoin-cli addnode 34.83.218.180:53572 add
./dapscoin-cli addnode 209.250.232.169:53572 add
./dapscoin-cli addnode 91.211.250.14:53572 add
./dapscoin-cli addnode 173.249.51.221:53572 add
./dapscoin-cli addnode 139.180.173.111:53572 add
./dapscoin-cli addnode 51.91.109.193:53572 add
./dapscoin-cli addnode 45.32.71.21:53572 add
./dapscoin-cli addnode 45.32.71.21:53572 add
./dapscoin-cli addnode 123.1.96.107:53572 add
echo "Success"
watch ./dapscoin-cli getinfo
