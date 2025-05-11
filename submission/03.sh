# Created a SegWit address.
ADDR=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" bech32)
#$ bitcoin-cli -regtest getnewaddress default bech32

# Add funds to the address.
bitcoin-cli -regtest generatetoaddress 101 "$ADDR"

# Return only the Address
echo $ADDR




