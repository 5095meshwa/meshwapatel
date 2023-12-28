import 'dart:io';

void main()
{
  int n;
  print("enter the values :");
  n = int.parse(stdin.readLineSync()!);

  for(int i=1;i<=10;i++)
  {
    print("${n}*${i}=${n*i}");
  }

}