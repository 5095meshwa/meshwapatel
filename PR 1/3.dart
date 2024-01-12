import 'dart:io';
void  main()
{
  List l1=[1,2,3,4,5,6,7];
  print(l1);
  print("insert");
  print("update");
  print("dalete");

  stdout.write("Enter the choice ");
  int n=int.parse(stdin.readLineSync()!);

switch(n)
{
  case 1:
  l1.insert(3, 10);
  print(l1);
  break;

  case 2:
  stdout.write("Enter the values:");
  int a=int.parse(stdin.readLineSync()!);
  l1.add(a);
  print(l1);
  break;

  case 3:
  l1.removeAt(4);
  print(l1);
 default:
 stdout.write("invaild choice !!!");
 break;
}

}