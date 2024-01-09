import 'dart:io';
void main()
{
  int n,firstdigit,lastdigit,sum=0;

  print("Enter the number:");
  n=int.parse(stdin.readLineSync()!);

   lastdigit =n %10;
   firstdigit=n;
   while(n>=10)
   {
    n=(n/10) as int;

   }
   firstdigit=n;
   sum=firstdigit+lastdigit;
   print("sum of number if $sum");
}