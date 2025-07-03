
source .env
forge script script/clientScripts/Application_Deploy_01_AppManager.s.sol --ffi -vvvv --rpc-url $ETH_RPC_URL --broadcast --gas-price 20 --verify --verifier etherscan --etherscan-api-key $ETHERSCAN_API_KEY
source .env
forge script script/clientScripts/DeployERC20Handler.s.sol --ffi -vvvv --rpc-url $ETH_RPC_URL --broadcast --gas-price 20 --verify --verifier etherscan --etherscan-api-key $ETHERSCAN_API_KEY
source .env
forge script script/clientScripts/DeployERC20HandlerPt2.s.sol --ffi -vvvv --rpc-url $ETH_RPC_URL --broadcast --gas-price 20 --verify --verifier etherscan --etherscan-api-key $ETHERSCAN_API_KEY