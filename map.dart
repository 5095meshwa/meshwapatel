import 'dart:io';

void main()
{
  List l1 = [];
  List l2 = [];
  List l3 = [];
  List l4 = [];
  Map  m1 = {};
  dynamic s1;

  for(int i=0; i<=2; i++)
  {
    
    print("Enter id   of employee : ");
    s1 = stdin.readLineSync();
    l1.add(s1);

    print("Enter name of employee : ");
    s1 = stdin.readLineSync();
    l2.add(s1);

    print("Enter age of employee  : ");
    s1 = stdin.readLineSync();
    l3.add(s1);

    print("Enter salary of employee : ");
    s1 = stdin.readLineSync();
    l4.add(s1);

    print("\n");

  }

  for(int i=0; i<=2; i++)
  {
    m1["Id"] = l1[i];
    m1["Name"] = l2[i];
    m1["Age"] = l3[i];
    m1["Salary"] = l4[i];
    
  }
  print(m1);
  
}
