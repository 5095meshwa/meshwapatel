import 'dart:io';
void main()
{
  int n;
  print("Enter the number :");

  n=int.parse(stdin.readLineSync()!);

  for(int i=1;i<=n;i++)
  {
    if(i%2==1)
    {
      print(i);
    }
  }
}