import 'dart:io';

void main(){
  String list = [];
  while(true){
    print('Menu:');
    print('1. Add Task');
    print('2. Delete Task');
    print('3. Show Tasks');
    print('4. Exit');
    stdout.write('Enter your choice:');
    String? choice = stdin.readLineSync();

    switch(choice){
      case('1'):
        addtask();
      break;
      case '2':
        deletetask();
        break;
      case '3':
        showtasks();
        break;
      case '4':
        print('Exiting...');
        return;
      default:
        print('Invalid choice. Please enter a valid option.');
    }
  }
}

// creating individual functions
void addtask(){
  print('Enter task:');
  String? task;
  task= (String.tryParse(stdin.readLineSync()!));
  if(task!=null){
    if(list.contains(task)){
      print(pehle se hai ye task yaar);
    }else if(list.contains(task)!){
      list.add(task);
    }else{
      print('Invalid Input');
    }
  }
}