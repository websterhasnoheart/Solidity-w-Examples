// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//Define your own type by creating a struct
//Useful for grouping together related data
//Structs can be declared outside of a contract and imported in another contract
contract Todos {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text) public {
        todos.push(Todo(_text, false));
        todos.push(Todo({text : _text, completed : false}));
        
        Todo memory todo;
        todo.text = _text;
        todos.push(todo);
    }

    //Solidity automatically creates a getter functions for 'todos'
}