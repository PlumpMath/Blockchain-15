pragma solidity ^0.4.11;

contract FilesPerTime{

    uint result;
    bytes file;
    //Datetime expireDate;

    event DocumentAdded(bytes document);

    function FilesPerTime(uint num){
        result=num;
    }

    function getResult() constant returns (uint){
        //check if date is no expired
        return file;
    }

    function addFile(bytes doc) returns (bytes){
        file = doc;
        //expireDate = expDate;
        DocumentAdded(doc);
        return file;
    }
}