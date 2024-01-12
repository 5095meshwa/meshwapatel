import 'dart:io';

void main()
{
  Map emp = {};

  for(int i=0; i<3; i++)
  {
    stdout.write("Enter the id : ");
    int id = int.parse(stdin.readLineSync()!);

    stdout.write("Enter your name : ");
    String? name = stdin.readLineSync();

    stdout.write("Enter your age : ");
    int age = int.parse(stdin.readLineSync()!);

    stdout.write("Enter the employee salary : ");
    int salary = int.parse(stdin.readLineSync()!);

    emp['name'] = {"id" : id, "name" : name, "age" : age, "salary" : salary};
    print(" ");

    for(String key in emp.keys)
    {
      print("Employee id : ${emp[key]['id']}");
      print("Employee Name : ${emp[key]['name']}");
      print("Enter Age : ${emp[key]['age']}");
      print("Enter Salary : ${emp[key]['salary']}");
    }
  }
}