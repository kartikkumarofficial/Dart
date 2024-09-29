import 'dart:io';

void main(){
  double? inp1;
  double? inp2;
  double? inp3;
  print('''Choose:
  1-Celsius to Fahrenheit
  2-Fahrenheit to Celsius''');
  inp1= (double.tryParse(stdin.readLineSync()!));
  if(inp1==1){
    print('Enter temperature in Celsius:');
    inp2= (double.tryParse(stdin.readLineSync()!)!);
    print(((inp2)*9/5)+32);
  }else if(inp1==2){
    print('Enter temperature in Fahrenheit:');
    inp3= (double.tryParse(stdin.readLineSync()!)!);
    print((inp3 - 32) * 5 / 9);
  }

}