# First DApp: A To Do List
First decentralized application. It is a To-Do list where you can add tasks and mark them as completed.

## Prerequisites

Make sure, your device had installed:

- Nodejs
- Python
- Git

## Execution

1. Install Truffle on your system via

   ```bash
   npm install -g truffle@5.0.2
   ```

2. Clone this repository in whatever folder you want.

3. Download, install and run [Ganache](https://www.trufflesuite.com/ganache#).

4. Download, install and configure [Metamask](https://metamask.io/).

5. In the project directory, to install the it's dependencies, run

   ```bash
   npm install
   ```

5. Perform the migrations of the smart contracts to the *blockchain* via

   ```bash
   truffle migrate
   ```

6. Make sure all the features are running without problems with

   ```bash
   truffle test
   ```

   If Ganache is not running at *127.0.0.1:7545*, the command above won't work.

7. Run the virtual server via

   ```bash
   npm run dev
   ```

   This command will open your default browser in the URL *127.0.0.1: 3000*. Make sure that browser is which Metamask was installed.

8. Interact with the application. Explore how much Ethers each transaction cost.

