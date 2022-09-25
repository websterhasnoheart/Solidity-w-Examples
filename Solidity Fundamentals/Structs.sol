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
    // Therefore, the following function is not needed
    function get(uint _index) public view returns (string memory text, bool completed) {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    //update text
    // calldata is an immutable temporary location where function arguments are stored
    function updateText(uint _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    function toggleCompleted(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}