import 'dart:io';
void main()
{
  int n;
  int num=1,y=1;
  for (var i = 1; i <=10 ; i++) {
    for (var j = 1; j < i; j++) {
      stdout.write(" - ");
      
    }
    for (var j = i; j <=10; j++) {
      stdout.write(" $num");
      if(num >= 1 && num <= 9)
      {
        stdout.write(" ");

      }
       num=num+j;
        }
        for (var j = 9; j >=i; j--) {
          stdout.write(" $num");
          num=num+j;
        }
        y+=i;
        num=i+y;
        print("");
  }

}