import 'dart:io';
void main()
{
  print("Enter the state ");
  List l1= [];
  for(int i=0;i<29;i++)
  {
    String? x= stdin.readLineSync();
    l1.add(x);

  }
  print(l1);

}