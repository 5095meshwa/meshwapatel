import 'dart:io';
void main()
{
  int n;
  print("Enter the number :");
  n=int.parse(stdin.readLineSync()!);

  for(int i=0;i<=n;i++)
  {
    print(i);
  }
}