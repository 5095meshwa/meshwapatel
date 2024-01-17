import 'dart:io';
void job ({int? a,int? b,int? c})
{
  int total;
  total =a! +b!+c!;
  double percentage =total/3;
  if(percentage>=35)
  {
    print("the person is able to gain a job");

  }
  else{
    print("the person is not able to gain a job");

  }
}
void main()
{
  job(a: 20,b: 40,c: 80);
}