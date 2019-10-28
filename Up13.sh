echo "Stopping dapscoind..."
cd /usr/local/bin && dapscoin-cli stop
sleep 2s 
echo "Removing old files..."
cd /usr/local/bin && rm -rf master_linux-v1.0.2.tar
cd /usr/local/bin && rm -rf master_linux-v1.0.1.3.zip
cd /usr/local/bin && rm -rf master_linux-v1.0.2.tar
sleep 5s 
echo "Done!"
echo "Removing old wallet..."
cd /usr/local/bin && rm -rf dapscoin-cli
cd /usr/local/bin && rm -rf dapscoind
cd /usr/local/bin && rm -rf dapscoin-qt
cd /usr/local/bin && rm -rf dapscoin dapscoin-poa-minerd
cd /usr/local/bin && rm -rf dapscoin-tx
echo "Done!"
echo "Downloading update..."
cd /usr/local/bin && wget https://github.com/DAPSCoin/DAPSCoin/releases/download/1.0.3/master_linux-v1.0.3.4.zip
echo "Done!"
echo "Extracting update..."
cd /usr/local/bin && sudo unzip master_linux-v1.0.3.4.zip
echo "Done!"
echo "Removing old files..."
cd /usr/local/bin && rm -rf master_linux-v1.0.3.4.zip
echo "Done!"
echo "Set permissions on files..."
cd /usr/local/bin && sudo chmod 777 daps*
sleep 5s 
cd /usr/local/bin && ./dapscoind -daemon
sleep 5s 
echo "Update completed!"
sleep 1s 
cd /usr/local/bin && watch ./dapscoin-cli getinfo
