

import 'dart:io';

int cube(int n)
{
  return n*n*n;
} 
void main()
{

  print("enter is number:");
  
  int n=int.parse(stdin.readLineSync()!);
  
   print("cube is $n ${cube(n)}");
}
