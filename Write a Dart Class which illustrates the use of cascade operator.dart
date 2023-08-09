
import 'dart:io';
class Person 
{
  String? name;
  int? age;
  
  Person(this.name, this.age);
  
  void student() 
  {
    print("Name: $name, Age: $age");
  }
}
void main() 
{
  Person person = Person("Meshva", 19)
    ..age = 19
    ..student();
}
