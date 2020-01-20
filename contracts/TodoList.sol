pragma solidity ^0.5.0;

contract TodoList {
    // State variables
    uint public tasksCount = 0;
    mapping (uint => Task) public tasks;

    // Events
    event TaskCreated(
        uint id,
        string content,
        bool completed
    );

    event TaskCompleted(
        uint id,
        bool completed
    );

    constructor() public {
        createTask("Create your first task");
    }

    // Functions
    function createTask(string memory _content) public {
        tasksCount ++;
        tasks[tasksCount] = Task(tasksCount, _content, false);
        emit TaskCreated(tasksCount, _content, false);
    }

    function toggleCompleted(uint _id) public {
        Task memory _task = tasks[_id];
        _task.completed = !_task.completed;
        tasks[_id] = _task;
        emit TaskCompleted(_id, _task.completed);
    }

    // Structs
    struct Task {
        uint id;
        string content;
        bool completed;
    }


}