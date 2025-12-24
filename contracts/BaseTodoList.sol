// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BaseTodoList {
    struct Todo {
        string text;
        bool completed;
        uint256 createdAt;
    }

    mapping(address => Todo[]) private todos;

    event TodoAdded(address indexed user, uint256 indexed index, string text);
    event TodoToggled(address indexed user, uint256 indexed index, bool completed);

    function addTodo(string calldata text) external {
        require(bytes(text).length > 0, "Empty text");

        todos[msg.sender].push(
            Todo({
                text: text,
                completed: false,
                createdAt: block.timestamp
            })
        );

        emit TodoAdded(msg.sender, todos[msg.sender].length - 1, text);
    }

    function toggleTodo(uint256 index) external {
        require(index < todos[msg.sender].length, "Bad index");

        Todo storage t = todos[msg.sender][index];
        t.completed = !t.completed;

        emit TodoToggled(msg.sender, index, t.completed);
    }

    function getTodoCount(address user) external view returns (uint256) {
        return todos[user].length;
    }

    function getTodo(address user, uint256 index)
        external
        view
        returns (string memory text, bool completed, uint256 createdAt)
    {
        require(index < todos[user].length, "Bad index");
        Todo storage t = todos[user][index];
        return (t.text, t.completed, t.createdAt);
    }
}
