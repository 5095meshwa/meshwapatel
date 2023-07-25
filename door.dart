import 'dart:io';

void main()
{
    List l1 = [];
    for(int i=1; i<=50; i++)
    {
      l1.add(i);
    }
         for(int i=1; i<=10;i++)
         {
          l1[i-1]="open";
         }
//2

for(int i=2; i<=20; i=i+2)
{
  if(l1[i-1]=="open")
  {
    l1[i-1]="close";
  }
  else{
    l1[i-1]="open";
  }
}
//3
for(int i=3; i<=30; i=i+3)
{
  if(l1[i-1]=="open")
  {
    l1[i-1]="close";

  }
  else if(l1[i-1]=="close")
  {
    l1[i-1]="open";
  }
  else{
    l1[i-1]="open";
  }
}

//4
for(int i=4; i<=40; i=i+4)
{
  if(l1[i-1]=="open")
  {
    l1[i-1]="close";

  }
  else if(l1[i-1]=="close")
  {
    l1[i-1]="open";
  }
  else{
    l1[i-1]="open";
  }
}

//5
for(int i=5; i<=50; i=i+5)
{
  if(l1[i-1]=="open")
  {
    l1[i-1]="close";

  }
  else if(l1[i-1]=="close")
  {
    l1[i-1]="open";
  }
  else{
    l1[i-1]="open";
  }
}


for(int i=1;i<=50;i++)
{
  if(l1[i-1]=="open")
  {
    l1[i-1]="open";

  }
  else if(l1[i-1]=="close")
  {
    l1[i-1]="close";
  }
  else{
    l1[i-1]="close";
  }
}

int open=0,close=0;
for(int i=1; i<=50; i++)
{
  if(l1[i-1]=="open")
  {
    open++;
  }
  else{
    close++;
  }
}

print("open door=$open");
print("close door=$close");

print(l1);


}
