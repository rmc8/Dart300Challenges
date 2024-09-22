class Task {
  final String name;
  final int priority;
  final String description;
  bool isDone;

  Task({
    required this.name,
    required this.priority,
    required this.description,
    this.isDone = false,
  });
}

class Todo {
  final Map<String, Task> _taskList = {};
  int _taskId = 1;

  void addTask(Task task) {
    final id = _taskId.toString();
    _taskList[id] = task;
    _taskId++;
  }

  void deleteTask(String id) {
    _taskList.remove(id);
  }

  void markAsDone(String id) {
    final task = _taskList[id];
    if (task != null) {
      task.isDone = true;
    }
  }

  Map<String, Task> get taskList => Map.unmodifiable(_taskList);
}

void main() {
  final todo = Todo();
  final task = Task(
    name: "タスク1",
    priority: 1,
    description: "これは最初のタスクです",
  );

  todo.addTask(task);
  todo.markAsDone("1");
  print(todo.taskList);
}
