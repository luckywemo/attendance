// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract Attendance{
    // Task
    //creating form
    // form input  name, location, topic, rating, wallet address, feedback/ comments.
    // location - online or physical
    //rating - 1,2,3,4
    //function to set the info
    //function to retrieve the info

  
    
    enum Location {
        online,
        physical
    }

    enum Rating {
        Dissatisfied,
        Satisfied,
        Good,
        Excellent
    }
    struct FormDetail {
        string name;
        Location location;
        string topic;
        Rating rating;
        address walletAddress;
        bytes32 feedback;
    }
    
    FormDetail[] public list;
    function form(string memory _name, Location _location, string memory _topic, Rating _rating, address _address, bytes32 _feedback) public returns(bool success) {
        list.push(FormDetail(_name, _location, _topic, _rating, _address, _feedback));
        return true;
    }
    function retrieve() public view returns(FormDetail[] memory) {
        return list;
    }
}