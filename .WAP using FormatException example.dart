import 'dart:io';

void main() {
  try {
    print(10 ~/ 0);
  } on FormatException {
    print("invalid input !");
  } catch (error) {
    print("invalid input ! $error");
  }
}
