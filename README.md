# Private Blockchain
This repository has some basic commands configured for setting up your own private testnet for Ethereum.

# Setup

    make start

Then in another terminal

    make console
    > personal.newAccount()
    > miner.start(4)

Wait a bit...

    > eth.getBalance(eth.coinbase)
    > miner.stop()
    > loadScript('mining.js')

That should get you to a basic state with an account with some ether, and a private blockchain awaiting transactions.

The `mining.js` script starts a listener that checks to see if there's any transactions pending and stops mining if there's none left.

# References
* [Command line options](https://github.com/ethereum/go-ethereum/wiki/Command-Line-Options)
* [go-ethereum Project wiki](https://github.com/ethereum/go-ethereum/wiki/Setting-up-private-network-or-local-cluster)
* [ethdocs Documentation](http://www.ethdocs.org/en/latest/network/test-networks.html#id3)
