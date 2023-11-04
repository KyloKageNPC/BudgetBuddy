import 'package:flutter/material.dart';
import '../all_expenses_screen/all_expense_fetcher.dart';
import '../widgets/category_screen/category_fetcher.dart';
import 'package:bubget_buddy/widgets/expense_screen/expense_form.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});
  static const name = '/category_screen'; // for routes
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87 ,
        title: const Text('Search Menu'),
      ),
      backgroundColor: Colors.grey[400],

      body:  AllExpensesFetcher(),

    );
  }
}