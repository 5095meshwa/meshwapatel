import 'dart:io';
void main()
{
  int n;
  print("Enter the number of n:");
  n=int.parse(stdin.readLineSync()!);

  int prime=0;

  print("prime number ");
  for(int j=2; j<=n; j++)
  {
    prime=0;
    for(int i=2; i<=j/i; i++)
    {
      if(j%i==0)
      {
        prime=1;
      }
    }

    if(prime==0)
    {
      stdout.write(" $j ");
    }
  }
}