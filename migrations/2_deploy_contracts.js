var CookingBook = artifacts.require('./CookingBook.sol');

module.exports = function(deployer){
    deployer.deploy(CookingBook);
}