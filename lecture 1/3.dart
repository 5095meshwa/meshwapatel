import 'dart:io';
void main()
{
  
   int a,b, multi;

  stdout.write("Enter the number of a: ");
  String? num1 = stdin.readLineSync();

  stdout.write("Enter the number of b: ");
  String? num2 = stdin.readLineSync();


   a=int.parse(num1!);
   b=int.parse(num2!);

   multi=a*b;
   print(multi);


}