cd /usr/local/bin
./dapscoin-cli getinfo
./dapscoin-cli stop 
sleep 2s
./dapscoind -daemon
sleep 2s
./dapscoin-cli masternode status
