pragma solidity ^0.4.11;

contract CalculatorV2{

    uint result;
    bytes file;

    event NumberAdded(uint n);
    event NumberSubtracted(uint n);
    event NumberMultiplied(uint n);
    event NumberDivided(uint n);

    function CalculatorV2(uint num){
        result=num;
    }

    function getResult() constant returns (uint){
        return result;
    }

    //function getFile() constant
    function saveFil

    function addToNumber(uint num) returns (uint){
        result += num;
        NumberAdded(num);
        return result;
    }

    function subtractNumber(uint num) returns (uint){
        result -= num;
        NumberSubtracted(num);
        return result;
    }

    function multiplyWithNumber(uint num) returns (uint){
        result *= num;
        NumberMultiplied(num);
        return result;
    }

    function divideByNumber(uint num) returns (uint){
        result /= num;
        NumberDivided(num);
        return result;
    }
}