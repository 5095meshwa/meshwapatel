void main()
{
  List l1=["Meshva","drashti","dipali","meshva","dipali"];

  int n;

  int i,j;

  for(i=0;i<l1.length;i++)
  {
    n=1;
    for(j=i+1;j<l1.length;j++)
    {
      if(l1[i]==l1[j])
      {
        n++;
        l1[j]=-1;

      }
    }
    if(l1[i]!=-1)
    {
      print(l1[i]);
    }
  }
}