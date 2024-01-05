import 'dart:io';
 
void main() {

 
  int n;
  int count=0;
  
  
  stdout.write("Enter the value of n : ");
  n = int.parse(stdin.readLineSync()!);

  while(n != 0)
  {
    n = n ~/ 10;
    count++;
  }
  print("Count number of digits : $count");
}
