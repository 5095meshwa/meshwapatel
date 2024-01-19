import 'dart:io';

class Train
{
  int? Trainnumber;
  String? Trainname;
  String? Source;
  String? Destination;
  int? TrainTime;



  void set()
  {
    print("Enter the Trainnumber:");
    Trainnumber=int.parse(stdin.readLineSync()!);

    print("Enter the Trainname:");
    Trainname=stdin.readLineSync();

    print("Enter the source:");
    Source=stdin.readLineSync();

    print("Enter the Destination:");
    Destination=stdin.readLineSync();

    print("Enter the TrainTime:");
    TrainTime=int.parse(stdin.readLineSync()!);
    print("");
   }
  void get()
  {
    print("Trainnumber:$Trainnumber");
    print("Trainname:$Trainname");
    print("source:$Source");
    print("Destination:$Destination");
    print("TrainTime:$TrainTime");
    print("");
  }
}
void main()
{
  List<Train> l1=[];
  for(int i=0;i<3;i++)
  {
    Train t1 =Train();
      t1.set();
      t1.get();
      l1.add(t1);
      if(i==2)
      {
        print("Enter the search Train number:");
          int n=int.parse(stdin.readLineSync()!);
          if(n==l1[0].Trainnumber)
          {
            l1[0].get();
          }
          else if(l1[1].Trainnumber==n)
          {
            l1[1].get();
          }
          else if(l1[2].Trainnumber==n)
          {
            l1[2].get();

          }
          else
          {
            print("Trian number is not correct");
          }
      }
  }
}