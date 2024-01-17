import 'dart:io';
int cube(int n)
{
  return n*n*n;

}
void main()
{
  print("Enter the number ");
  int n=int.parse(stdin.readLineSync()!);
  print("cube: ${cube(n)}");
}