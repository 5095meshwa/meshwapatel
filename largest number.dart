void main() 
{
  List n1 = [1, 2, 3, 4, 5, 6];
  int Number = n1[0];
  for (int i = 1; i < n1.length; i++)
   {
    if (n1[i] > Number) 
    {
      Number = n1[i];
    }
  }
  print(Number);
}
