echo "Stopping dapscoind..."
cd /usr/local/bin && dapscoin-cli stop
sleep 2s 
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
sleep 5s 
cd /usr/local/bin 
./dapscoind -reindex
sleep 5s 
cd /usr/local/bin 
./dapscoin-cli addnode 95.179.254.185:53572 add
./dapscoin-cli addnode 45.63.40.9:53572 add
./dapscoin-cli addnode 51.15.121.253:53572 add
./dapscoin-cli addnode [2804:14d:c880:83a9:9d2e:9e10:5462:33c9]:53572 add
echo "Update completed!"
sleep 1s 
cd /usr/local/bin
watch ./dapscoin-cli getinfo
