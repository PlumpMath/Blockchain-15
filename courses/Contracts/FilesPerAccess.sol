pragma solidity ^0.4.11;

contract FilesPerAccess{

    //represent a repository for someone who want to sabe their file
   struct Repository {
        bytes file;
        string fileName;
        uint downloads;
   }
   
   //a collection of repositorys
   mapping (address => Repository) public repoStorage;
   

   address public owner;

    event DocumentAdded(address user, bytes file);
    event GetDocument(address user, bytes file);

    function FilesPerAccess(){
        owner = msg.sender;
    }

    function getResult() constant returns (string){
        return repoStorage[msg.sender].fileName;
    }

    function getFile() public returns(bytes){
        if(repoStorage[msg.sender].downloads > 0){
            repoStorage[msg.sender].downloads -= 1;
            GetDocument(msg.sender, repoStorage[msg.sender].file);
            return repoStorage[msg.sender].file;
        }else{
            throw;
        }
    }

    function addFile(bytes fileToAdd, string name) public returns (string){
        repoStorage[msg.sender] = Repository({
            file: fileToAdd,
            fileName: name,
            downloads: 3
        });

        DocumentAdded(msg.sender, fileToAdd);

        return name;
    }

    // Fallback function - Called if other functions don't match call or
    // sent ether without data
    // Typically, called when invalid data is sent
    // Added so ether sent to this contract is reverted if the contract fails
    // otherwise, the sender's money is transferred to contract
    function () {
        throw; // throw reverts state to before call
    }
}