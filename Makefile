GETH=geth
CMD=$(GETH) --dev \
	--networkid "42" \
	--rpcport "8080" \
	--port "30500" \
	--ipcpath "./geth.ipc" \
	--datadir "./chain"
ARGS=version

start:
	$(CMD) --genesis "/Users/boydb/Development/geth-private/genesis.json" \
		--nodiscover \
		--maxpeers 0 \
		--rpc \
		--rpcapi "db,eth,net,web3" \
		--rpccorsdomain "http://localhost" \
		--identity "TestnetMainNode"
		--verbosity 5

console:
	$(CMD) attach

run:
	$(CMD) $(ARGS)

clean:
	rm -rf chain/*
	rm ./geth.ipc
