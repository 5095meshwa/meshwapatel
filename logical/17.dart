import 'dart:io';
void main()
{
  List l1=[];
  int a;



  for(int i=0;i<10;i++)
  {
  print("Enter the array[$i]");
  a=int.parse(stdin.readLineSync()!);
  l1.add(a);
  }
     
     for(int i=0;i<10;i++)
     {
      if(l1[i]==9)
      {
        l1[i]==0;
      }
     }
     print("new array:$l1");
}
