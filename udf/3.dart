
import 'dart:io';

class Age
{
  late int date;
  late int month;
  late int year;
  int? age;
  String? name;
  int currentyear=2024;

  void set()
  {
    stdout.write("Enter the name : ");
    name = stdin.readLineSync()!;
    stdout.write("entre date : ");
    date = int.parse(stdin.readLineSync()!);
    stdout.write("Enter month : ");
    month = int.parse(stdin.readLineSync()!);
    stdout.write("Enter year : ");
    year = int.parse(stdin.readLineSync()!);
  }

  void get()
  {
    if(year >= 1924 && year <= 2024)
    {
      if(month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12 )
      {
        if(date >= 1 && date <= 31)
        {
          for(int i=year; i<=2024; i++)
          {
            age = currentyear - year;
          }
        }
        else
        {
          print("Enter valid date in 1 to 31!!");
        }
      }
      else if(month == 4 || month == 6 || month == 9 || month == 11)
      {
        if(date >= 1 && date <= 30)
        {
          for(int i=year; i<=2024; i++)
          {
            age = currentyear - year;
          }
        }
        else
        {
          print("Enter valid date in 1 to 30 !!");
        }
      }
      else if(year % 4 == 0)
      {
        if(month == 2)
        {
          if(date >= 1 && date <= 29)
          {
            for(int i=year; i<=2024; i++)
            {
              age = currentyear - year;
            }
          }
          else
          {
            print("Enter valid date in 1 to 29 !!");
          }
        }
        else
        {
          if(month == 2)
          {
            if(date >= 1 && date <= 28)
            {
              for(int i=year; i<=2024; i++)
              {
                age = currentyear - year;
              }
            }
          }
          else
          {
            print("Enter the valid date in 1 to 28 !!");
          }
        }
      }
    }
    else
    {
      print("Enter valid year !!");
    }

    print("Name = ${name}");
    print("Date of birth (dd/mm/yy)= ${date} / ${month} / ${year}");
    print("Age = ${age}");

  }
}

main()
{
  for(int i=0; i<3; i++)
  {
    Age a1 = Age();
    a1.set();
    a1.get();
  }
}