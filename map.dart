import 'dart:io';
void main()
{
   Map emp={};
    for(int i=0;i<=3;i++)
    {
         print("enter the emp id:");
         int id = int.parse(stdin.readLineSync()!);

           print("enter the emp name:");
          String? name=(stdin.readLineSync()!);

          print("enter the emp age:");
          int age= int.parse(stdin.readLineSync()!);

          print("enter the emp salary:");
          int salary= int.parse(stdin.readLineSync()!);


        emp['name']={
          'id':id,
          'name':name,
          'age':age,
          'salary':salary,
        
        
        };


        for(String key in emp.keys)
        {
          print('emp id:${emp[key]['id']}');
           print('emp name:${emp[key]['name']}'); 
           print('emp age:${emp[key]['age']}');
           print('emp salary:${emp[key]['salary']}');

          
        }



    }
}
