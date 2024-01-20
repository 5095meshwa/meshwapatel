
import 'dart:async';
import 'dart:io';

class Demo
{
    var feet;
    var inch;

  void set()
  {
    print("Enter the feet:");
    feet =int.parse(stdin.readLineSync()!);

    print("Enter the inch:");
    inch=int.parse(stdin.readLineSync()!);

  }
  void get()
  {
    feet=feet+inch/12;
    inch=inch%12;

   
   print("Feet:${feet}");
   print("Inch:${inch}");

    
 }


}
void main()
{
    Demo d1=Demo();
    d1.set();
    d1.get();
}