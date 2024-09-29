//Fibonacci
import 'dart:io';

void main(){
  int n1 = 0;
  int n2 = 1;
  int i = 1;
  int? num;
  print("Enter till which number you want to print the sequence:");
  num = (int.parse(stdin.readLineSync()!));
  while(i<=num){
    print(n1);
    int an=n1+n2;
    n1=n2;
    n2=an;
    i++;
  }
}