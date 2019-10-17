echo "Stopping dapscoind..."
cd /usr/local/bin && dapscoin-cli stop
cd /usr/local/bin 
rm -rf master_linux-v1.0.2.tar
rm -rf master_linux-v1.0.1.3.zip
rm -rf dapscoin-cli
rm -rf dapscoind
rm -rf dapscoin-qt
rm -rf dapscoin dapscoin-poa-minerd
rm -rf dapscoin-tx
echo "Downloading update..."
wget https://github.com/DAPSCoin/DAPSCoin/releases/download/1.0.2/master_linux-v1.0.2.tar
echo "Extracting update..."
sudo tar -xvf master_linux-v1.0.2.tar -d /usr/local/bin
rm -rf master_linux-v1.0.2.tar
echo "Set permissions on files..."
sudo chmod +x /usr/local/bin/daps*
echo "Running dapscoind..."
./dapscoind -daemon
echo "Update completed!"
cd /usr/local/bin 
./dapscoin-cli getinfo
