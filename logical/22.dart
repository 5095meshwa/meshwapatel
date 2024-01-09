import 'dart:io';
void main()
{
  List l1=[];
  for(int i=0;i<5;i++)
  {
    l1.add(int.parse(stdin.readLineSync()!));

  }
  print("Prime number");
  int prime=0;
  for(int j=0;j<5;j++)
  {
    for(int i=2;i<=l1[j]/i;i++)
    {
         if(l1[j]% i==0)
         {
          prime=1;
         }
    }
    if(prime==0)
    {
      print("${l1[j]}");
    }
  }
}