import 'dart:io';
void main()
{
  int n;
  int a=1;
  print("Enter the number");
  n=int.parse(stdin.readLineSync()!);
  
  for(var i=1;i<=10;i++)
  {
print("${n}*${i} =${n*i}");  }
}

