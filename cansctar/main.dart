
import 'peramitar.dart';


void main() {
  // Using default constructor
  var defaultBook = Book();
  print("Default Book: ${defaultBook.book_id}, ${defaultBook.title}, ${defaultBook.author}");

  // Using parameterized constructor
  var book1 = Book.withDetails(1, "The Great Gatsby", "F. Scott Fitzgerald");
  print("Book 1: ${book1.book_id}, ${book1.title}, ${book1.author}");
}
