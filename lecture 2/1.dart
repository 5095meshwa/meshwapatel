
void main()
{
  List l1=[1,2,3];
  List l2=["hello","hello","hello"];
  List l3=[];

  for(int i=0;i<3;i++)
  {
    l3.add("${l1[i]}${l2[i]}");
  }
  print(l3);
}