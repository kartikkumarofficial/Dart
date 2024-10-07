import 'dart:io';

List<String> tasks = [];
final String fileName = 'tasks.txt';

void main() {
  loadTasksFromFile();

  while (true) {
    print('Menu:');
    print('1. Add Task');
    print('2. Delete Task');
    print('3. Show Tasks');
    print('4. Exit');
    stdout.write('Enter your choice: ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        addTask();
        break;
      case '2':
        deleteTask();
        break;
      case '3':
        showTasks();
        break;
      case '4':
        saveTasksToFile();
        print('Exiting and saving tasks...');
        return;
      default:
        print('Invalid choice. Please enter a valid option.');
    }
  }
}

void addTask() {
  stdout.write('Enter task: ');
  String? task = stdin.readLineSync();
  if (task != null && task.isNotEmpty) {
    if (tasks.contains(task)) {
      print('Task already exists.');
    } else {
      tasks.add(task);
      print('Task added.');
    }
  } else {
    print('Invalid input.');
  }
}

void deleteTask() {
  if (tasks.isEmpty) {
    print('No tasks to delete.');
    return;
  }

  stdout.write('Enter task to delete: ');
  String? task = stdin.readLineSync();
  if (task != null && tasks.contains(task)) {
    tasks.remove(task);
    print('Task deleted.');
  } else {
    print('Task not found.');
  }
}

void showTasks() {
  if (tasks.isEmpty) {
    print('No tasks to show.');
  } else {
    print('Your Tasks:');
    for (int i = 0; i < tasks.length; i++) {
      print('${i + 1}. ${tasks[i]}');
    }
  }
}

void saveTasksToFile() {
  File file = File(fileName);
  file.writeAsStringSync(tasks.join('\n'));
}

void loadTasksFromFile() {
  File file = File(fileName);
  if (file.existsSync()) {
    tasks = file.readAsLinesSync();
  }
}
