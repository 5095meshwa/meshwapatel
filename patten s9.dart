import 'dart:io';

void main()
{

  
  for (int i = 5; i >= 1; i--) 
  {
    for(int j = 5;j>=1;j--)
    {
      if(i>=j)
            stdout.write('*');
            else
             stdout.write(" ");
        }
        print("");
    }
}
  
