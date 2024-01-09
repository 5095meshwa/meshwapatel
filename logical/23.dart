import 'dart:io';

void main() 
{
  List l1 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  for (int i = 0; i < 3; i++)
   {
    for (int j = 0; j < 3; j++) 
    {
      stdout.write(l1[i][j]);
    }
    print("");
  }
  print("");

  List l2 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  for (int i = 0; i < 3; i++)
   {
    for (int j = 0; j < 3; j++) 
    {
      stdout.write(l2[i][j]);
    }
    print("");
  }
  print("");

  List l3 = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0],
  ];

  for (int i = 0; i < 3; i++) 
  {
    for (int j = 0; j < 3; j++) 
    {
      l3[i][j] = l1[i][j] + l2[i][j];
      stdout.write(l3[i][j]);
    }
    print("");
  }
}
