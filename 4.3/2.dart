import 'dart:io';
class Std{
  int? id;
  String? name;
  String? city;
  int? age;

 

 void set()
 {
  print("Enter the id:");
  id=int.parse(stdin.readLineSync()!);

  print("Ente the name:");
  name=stdin.readLineSync();

  print("Enter the city:");
  city=stdin.readLineSync();

  print("Enter the age:");
  age=int.parse(stdin.readLineSync()!);

  print("");

 }
 void get()
 {
  print("Id: ${id}");
  print("Name:${name}");
  print("City:${city}");
  print("Age:${age}");
  print("");
 }
}
void main()
{
  Std s1=Std();
  s1..set()..get();
}