import 'dart:io';
class Book {
  int? book_id;
  String? title;
  String? author;
  
  // Default constructor
  Book() {
    book_id = 0;
    title = "";
    author = "";
  }

  // Parameterized constructor
  Book.withDetails(int id, String t, String a) {
    book_id = id;
    title = t;
    author = a;
  }
}
