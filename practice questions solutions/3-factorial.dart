//To calculate factorial of a given number
import 'dart:io';
void main(){
  int n ;
  print('Enter number:');
  n = int.parse(stdin.readLineSync()!);
  int n2 =1;

  for(int i=1;i<=n;i++){
    n2=n2*i;
  }
    print("Factorial of number = $n2");
}
