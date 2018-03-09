pragma solidity ^0.4.18;

contract Coursetro {
    
   string name;
   uint age;

   event Instructor(string name, uint age);
   
   function setInstructor(string _name, uint _age) public {
       fName = _name;
       age = _age;
       Instructor(_name, _age);
   }
   
   function getInstructor() public constant returns (string, uint) {
       return (name, age);
   }
    
}