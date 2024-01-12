
void main()
{
  List l1=[1,2,3,4,5,6,7,8,9];
  int number=l1[0];
  for(int i=1;i<l1.length;i++)
  {
    if(l1[i]>number)
    {
      number=l1[i];

    }
  }
  print(number);
}