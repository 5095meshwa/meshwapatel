import 'dart:io';
void main()
{
   print("[1,2,3,4,5,6]");
   //insert
   List l1=[1,2,3,4,5,6];
   print("enter the value:");
   int a = int.parse(stdin.readLineSync()!);
   print("enter the insert:");
   int b = int.parse(stdin.readLineSync()!);
   
   l1.add(b);
   print("");
   print(l1);
   print("");

//update

   print("enter the values:");
   int c = int.parse(stdin.readLineSync()!);
   print("enter the update:");
   int d = int.parse(stdin.readLineSync()!);
   
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
