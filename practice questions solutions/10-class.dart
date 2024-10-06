import 'dart:io';


  class class1{
    String person = 'Kartik Kumar';
    int age = 17;
    String course = 'Btech CSE';
    void intro(){
      print('Hello I am $person!.I am $age years old.I am pursuing $course');
    }
  }
  void main(){
    var c =class1();
    print(c.person);
    print(c.age);
    c.intro();
    

}