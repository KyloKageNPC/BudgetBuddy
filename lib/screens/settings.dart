import 'package:bubget_buddy/screens/Categories.dart';
import 'package:bubget_buddy/screens/chart_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MySettings extends StatefulWidget {
  const MySettings({super.key});

  @override
  State<MySettings> createState() => _MySettingsState();
}

class _MySettingsState extends State<MySettings> {

  void signOutUser(){
    FirebaseAuth.instance.signOut();
  }

  void handleErasedData(){
    print("Tapped Data erase ");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Settings'),
      ),
      body: Container(

        padding: const EdgeInsets.fromLTRB(10, 10, 10, 544),
        width: double.infinity,

        transformAlignment: Alignment.center,

        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),

          ),
          child: ListView (
            children:  [

              ListTile(

                title: const Text('Search For Expenses',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: const Icon(Icons.chevron_right,
                color: Colors.white,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CategoryScreen()));
                },

              ),
              ListTile(
                title: const Text('LogOut',
                style: TextStyle(
                  color: Colors.white
                ),
                ),

                trailing: const Icon(Icons.logout,
                  color: Colors.red,
                ),
                onTap: signOutUser
              )


            ],
          ),
        ),
      ),
    );
  }
}
