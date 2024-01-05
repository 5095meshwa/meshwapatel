import 'dart:io';

void main()
{
  print("[1,2,3,4,5,6]");
  //insert
  List l1=[1,2,3,4,5,6];
  print("Enter the values:");
  int a=int.parse(stdin.readLineSync()!);

  print("Enter the number of insert:");
  int b=int.parse(stdin.readLineSync()!);


  l1.add(b);
  print("");
  print(l1);
  print("");


  //update
  print("Enter the number :");
  int c=int.parse(stdin.readLineSync()!);

  print("Enter the values of update :");
  int d=int.parse(stdin.readLineSync()!);

  l1[c]=d;
  print("");
  print(l1);
  print("");
  
  //delete
   print("enter the values:");
   
   print("enter the delete:");
   int n = int.parse(stdin.readLineSync()!);
   
   l1.remove(n);
   print("");
   print(l1);
   print("");

}