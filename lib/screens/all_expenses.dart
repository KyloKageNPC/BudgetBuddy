import 'package:flutter/material.dart';

import '../all_expenses_screen/all_expense_fetcher.dart';

class MyAll extends StatefulWidget {
  static const name = '/MyAll';
  const MyAll({super.key});

  @override
  State<MyAll> createState() => _MyAllState();
}

class _MyAllState extends State<MyAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AllExpensesFetcher(),
    );
  }
}
