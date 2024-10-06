import 'dart:io';
import 'dart:async';

void main() async {
  var content ='this should be written inside file';
  
  try{
    String file = File('input.txt').writeAsString(content);
    print('Content:');
    print(file);

    await File('output.txt').writeAsString(file);
    String file2 =File('output.txt').readAsString();
    print('Content in file2 : $file2');



  }catch(e){
    print('Error');
  }
  

}