import 'package:book_store/book_store_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookStore());
}

class BookStore extends StatelessWidget {
  const BookStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Store',
      home: BookStoreApp(),
    );
  }
}
