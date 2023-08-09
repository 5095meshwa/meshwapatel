import 'dart:io';
  
void main()
{
  stdout.write("Enter feet:");
  int feet =int.parse(stdin.readLineSync()!);
  stdout.write("Enter Inch:");
  int Inch =int.parse(stdin.readLineSync()!);
  
  double temp =(Inch/12);
  double m=(feet+temp);
  double n=Inch %12;

  int a=m.toInt();
  int b=n.toInt();


  print("Feet:$a|Inch:$b");
}
