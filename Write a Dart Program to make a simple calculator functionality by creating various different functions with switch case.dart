import 'dart:io';
void main() {
  print("Enter the first number: ");
  var num1 = int.parse(stdin.readLineSync()!);
  print("Enter the second number: ");
  var num2 = int.parse(stdin.readLineSync()!);
  print("Select the operation: ");
  print("1. Add");
  print("2. Subtract");
  print("3. Multiply");
  print("4. Divide");
  var operation = int.parse(stdin.readLineSync()!);
  switch (operation) {
    case 1:
      print(num1 + num2);
      break;
    case 2:
      print(num1 - num2);
      break;
    case 3:
      print( num1* num2);
      break;
    case 4:
      print( num1/ num2);
      break;
    default:
      print("Invalid operation");
  }
}
