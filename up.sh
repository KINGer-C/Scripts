echo "Stopping dapscoind..."
cd /usr/local/bin && dapscoin-cli stop
cd /usr/local/bin 
echo "Removing old files..."
cd /usr/local/bin && rm -rf master_linux-v1.0.2.tar
cd /usr/local/bin && rm -rf master_linux-v1.0.1.3.zip
echo "Done!"
echo "Removing old wallet..."
cd /usr/local/bin && rm -rf dapscoin-cli
cd /usr/local/bin && rm -rf dapscoind
cd /usr/local/bin && rm -rf dapscoin-qt
cd /usr/local/bin && rm -rf dapscoin dapscoin-poa-minerd
cd /usr/local/bin && rm -rf dapscoin-tx
echo "Done!"
echo "Downloading update..."
cd /usr/local/bin && wget https://github.com/DAPSCoin/DAPSCoin/releases/download/1.0.2/master_linux-v1.0.2.tar
echo "Done!"
echo "Extracting update..."
cd /usr/local/bin 
sudo tar -xvf master_linux-v1.0.2.tar
echo "Done!"
echo "Removing old files..."
cd /usr/local/bin
rm -rf master_linux-v1.0.2.tar
echo "Done!"
echo "Set permissions on files..."
cd /usr/local/bin 
sudo chmod +x /usr/local/bin/daps*
echo "Done!"
echo "Running dapscoind..."
sleep 3 ; cd /usr/local/bin && ./dapscoind -daemon
echo "Update completed!"
sleep 3 ; cd /usr/local/bin && ./dapscoin-cli getinfo
