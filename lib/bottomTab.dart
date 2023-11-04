import 'package:bubget_buddy/main.dart';
import 'package:bubget_buddy/screens/chart_screen.dart';
import 'package:bubget_buddy/screens/homePage.dart';
import 'package:bubget_buddy/screens/settings.dart';
import 'package:flutter/material.dart';

class MyTabs extends StatefulWidget {
  const MyTabs({super.key});

  @override
  State<MyTabs> createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> {

  int _slectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),

     //ExpenseChart(),

    MySettings(),

  ];

  void _onItemTapped(int index){
    setState(() {
      _slectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('Budget Buddy'),
        centerTitle: true,
      ),*/

      body: Center(
        child: _widgetOptions.elementAt(_slectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black87,
        items: const [
          BottomNavigationBarItem(
          icon: Icon(Icons.home,
              color: Colors.white),
            label: 'Home'
        ),

          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined,
                  color: Colors.white),
              label: 'Settings'
          ),


        ],
        currentIndex: _slectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
