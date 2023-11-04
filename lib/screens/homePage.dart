import 'package:bubget_buddy/screens/chart_screen.dart';
import 'package:bubget_buddy/widgets/category_screen/category_fetcher.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bubget_buddy/all_expenses_screen/all_expense_fetcher.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../widgets/expense_screen/expense_form.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  static const name = 'myHomePage';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void signOutUser(){
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: signOutUser, icon: Icon(Icons.exit_to_app_outlined))],
        backgroundColor: Colors.black87,
        title: const Text('Home'),
      ),

      body: const CategoryFetcher(),

    /*floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed:  () {

          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (_) => const ExpenseForm(),
          );

        },
        child: const Icon(Icons.add),


      ),*/
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: Colors.black87,
        overlayColor: Colors.white,
        children: [
          SpeedDialChild(
            child: Icon(Icons.add),
            backgroundColor: Colors.white,
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (_) => const ExpenseForm(),
              );
            },
            label: 'Add'
          ),
          SpeedDialChild(
              child: Icon(CupertinoIcons.chart_bar),
              backgroundColor: Colors.white,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ExpenseChart('category')));
              },
              label: 'Stats'
          )
        ],
      )

    );
  }
}
