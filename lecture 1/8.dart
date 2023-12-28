import 'dart:io';
void main()
{
  int p,t;
  double r;
  double i;

  print("Enter the values of p.");
  p=int.parse(stdin.readLineSync()!);

  print("Enter the values of t.");
  t=int.parse(stdin.readLineSync()!);

  print("Enter the values of r.");
  r=double.parse(stdin.readLineSync()!);

  i=(p*t*r)/100;
  print(i);

}