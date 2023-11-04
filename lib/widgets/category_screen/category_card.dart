import 'package:bubget_buddy/screens/homePage.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/ex_category.dart';


class CategoryCard extends StatelessWidget {
  final ExpenseCategory category;
  const CategoryCard(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).pushNamed(
          MyHomePage.name,
          arguments: category.title, // for expensescreen.
        );
      },
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(category.icon),
      ),
      title: Text(category.title),
      subtitle: Text('entries: ${category.entries}'),
      trailing: Text(NumberFormat.currency(locale: 'en_IN', symbol: 'K')
          .format(category.totalAmount)),
    );
  }
}