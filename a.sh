cd /usr/local/bin
./dapscoin-cli getinfo
./dapscoin-cli stop 
sleep 2s
./dapscoind -daemon
sleep 2s
cd /usr/local/bin && watch ./dapscoin-cli masternode status
rm -rf a.sh
