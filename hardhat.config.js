require("@nomiclabs/hardhat-waffle");
const fs = require("fs")
const privateKey = fs.readFileSync(".secret").toString()
module.exports = {
  defaultNetworks: "matic",
  networks:{
    hardhat:{
      chainId: 1337
    },
    mumbai: {
      url: "https://rpc-mumbai.matic.today",
      accounts: [privateKey]
    },
    mainet: {
      url: "https://rpc-mainnet.matic.network",
      accounts: [privateKey]
    },

  },

  solidity: "0.8.4",
};
