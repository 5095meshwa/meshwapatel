
void main() {
  List<int> myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print("The sum of the elements in the list is : ${Sum(myList)}");
}

int Sum(List<int> numbers) 
{
  int sum = 0;

  for (var adding in numbers) 
  {
    sum += adding;
  }
  return sum;
}
