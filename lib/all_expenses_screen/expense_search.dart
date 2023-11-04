import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/database_provider.dart';

class ExpenseSearch extends StatefulWidget {
  const ExpenseSearch({super.key});

  @override
  State<ExpenseSearch> createState() => _ExpenseSearchState();
}

class _ExpenseSearchState extends State<ExpenseSearch> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DatabaseProvider>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: TextField(
        onChanged: (value) {
          provider.searchText = value;
        },
        decoration:  InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8)
          ),
          labelText: 'Search Expenses',
        ),
      ),
    );
  }
}