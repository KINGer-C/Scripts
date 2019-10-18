echo "Stopping dapscoind..."
cd /usr/local/bin && dapscoin-cli stop
sleep 2s 
cd /root/.dapscoin
echo "Deleting blocks"
 rm -rf ~/.dapscoin/blocks ~/.dapscoin/chainstate ~/.dapscoin/database ~/.dapscoin/peers.dat
echo "downloading new blocks"
cd /root/.dapscoin
wget https://github.com/DAPSCoin/BootStrap/releases/download/latest/bootstrap.zip
sudo unzip bootstrap.zip -d ~/.dapscoin
cd /root/.dapscoin
rm -rf bootstrap.zip 
rm -rf boostrap.sh
echo "done!"
cd /usr/local/bin && dapscoind -daemon
