import 'dart:io';
import 'dart:math';

void quad(double a , double b, double c){
  double discriminant = (b*b) - (4*a*c);
  if(discriminant==0){
    print('Roots are real and equal');
    print('Roots are ' + ((-b) / (2 * a)).toString());

  }else if(discriminant>0){
    double root1 = (-b + sqrt(discriminant)) / (2 * a);
    double root2 = (-b - sqrt(discriminant)) / (2 * a);
    print('Roots are real and Distinct');
    print('Roots are $root1 & $root2');
  }else if(discriminant<0){
    print('Roots are Imaginary');
    double imag = ( sqrt(-discriminant)) / (2 * a);
    double real = ((-b) / (2 * a));
    print('Roots are $real & $imag') ;
  }
}
void main() {
  print("In the quadratic equation ax^2+bx+c=0");
  double? a;
  print('Enter coeffient of x^2:');
  a= (double.parse(stdin.readLineSync()!));
  double? b;
  print('Enter coeffient of x:');
  b= (double.parse(stdin.readLineSync()!));
  double? c;
  print('Enter c:');
  c = (double.parse(stdin.readLineSync()!));
  quad(a,b,c);
}