
import 'dart:io';
class Factorial
 {
  int factorial(int n)
   {
    if (n == 0) 
    {
      return 1;
    } 
    else 
    {
      return n * factorial(n - 1);
    }
  }
}
void main() {
  var factorial = Factorial();
  print(factorial.factorial(4)); 
}
