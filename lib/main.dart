import 'package:book_store/book_store_app.dart';
import 'package:book_store/core/routing/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BookStore(
    appRouter: AppRouter(),
  ));
}
