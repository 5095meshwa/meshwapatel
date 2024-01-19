import 'dart:io';
class Student {
  String? name;
  int? age;
  String? city;

  
  void set()
  {
    print("Entre the name :");
    name=stdin.readLineSync()!;

    print("Enter the age:");
    age=int.parse(stdin.readLineSync()!);

    print("Enter the city:");
    city= stdin.readLineSync()!;
    print("");



  }
  void get()
  {
    print("Name:$name");
    print("Age:$age");
    print("City:$city");
    print("");
    
     }
} 

void main()
{
  int n;
  print("Enter the student:");
  n=int.parse(stdin.readLineSync()!);

  List<Student> s1=[];
  for(int i=0;i<n;i++)
  {
    Student student=Student();
    student.set();
    s1.add(student);

  }
  for(int i=0;i<n;i++)
  {
    print("student Details ${i+1}:  ");
    s1[i].get();
  }
}
