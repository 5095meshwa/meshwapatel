import 'dart:io';
void main()
{


  
  int a,b,choice;
  print("1.Addition ");
  print("2.Substrsction ");
  print("3.Multiplition ");
  print("4.Division ");

  print("enter the number of choice ");
  choice=int.parse(stdin.readLineSync()!);

  print("enter the number of a:");
  a=int.parse(stdin.readLineSync()!);

  print("enter the number of b:");
  b=int.parse(stdin.readLineSync()!);


  switch(choice)
  {
    case 1: print("a+b ${a+b}");break;
    case 2: print("a-b ${a-b}");break;
    case 3: print("a/b ${a/b}");break;
    case 4: print("a*b ${a*b}");break;
    default :print("invaild number !");
  }
}