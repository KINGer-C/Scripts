clear
echo "Starting DAPS Masternode download and install..."
echo "Updating/Upgrading OS..."
sudo apt update && sudo apt upgrade -y
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
echo "Editing dapscoin.conf..."
vi dapscoin.conf
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
