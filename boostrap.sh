echo "Stopping dapscoind..."
cd /usr/local/bin && dapscoin-cli stop
sleep 2s 
cd /root/.dapscoin
echo "Deleting blocks"
rm -rf blocks
echo "downloading new blocks"
wget https://github.com/DAPSCoin/BootStrap/releases/download/latest/bootstrap.zip
sudo unzip -jo bootstrap.zip 
rm -rf bootstrap.zip 
echo "done!"
cd /usr/local/bin && dapscoind -daemon
