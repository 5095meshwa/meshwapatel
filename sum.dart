import 'dart:io';
void main() {
  // Define the 3x3 array.
   List<List<int>> l1= [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  // Print the menu options.
  print('Select an operation:');
  print('1. Sum of all elements');
  print('2. Sum of specific row');
  print('3. Sum of specific column');
  print('4. Sum of diagonal elements');
  print('5. Sum of antidiagonal elements');
  // Get the user's choice.
  int choice = int.parse(stdin.readLineSync()!);
  // Switch on the user's choice.
  switch (choice) {
    case 1:
      // Sum of all elements.
      int sum = 0;
      for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
          sum += l1[i][j];
        }
      }
      print('The sum of all elements is $sum.');
      break;
    case 2:
      // Sum of specific row.
      print('Enter the row number:');
      int row = int.parse(stdin.readLineSync()!);
      int sum = 0;
      for (int j = 0; j < 3; j++) {
        sum += l1[row][j];
      }
      print('The sum of the elements in row $row is $sum.');
      break;
    case 3:
      // Sum of specific column.
      print('Enter the column number:');
      int column = int.parse(stdin.readLineSync()!);
      int sum = 0;
      for (int i = 0; i < 3; i++) {
      
        sum += l1[i][column];
      }
      print('The sum of the elements in column $column is $sum.');
       break;
    case 4:
      // Sum of diagonal elements.
      int sum = 0;
      for (int i = 0; i < 3; i++) {
        sum += l1[i][i];
      }
      print('The sum of the diagonal elements is $sum.');
      break;
    case 5:
      // Sum of antidiagonal elements.
      int sum = 0;
      for (int i = 0; i < 3; i++) {
        sum += l1[i][2 - i];
      }
      print('The sum of the antidiagonal elements is $sum.');
      break;
    default:
      print('Invalid choice.');
  break;
  }
}
