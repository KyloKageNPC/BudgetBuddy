import 'package:bubget_buddy/bottomTab.dart';
import 'package:bubget_buddy/homePage/homePage.dart';
import 'package:bubget_buddy/homePage/LoginRegisterPage.dart';
import 'package:bubget_buddy/homePage/log_in.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          // if user is loged in return home
          if (snapshot.hasData){
            return const MyTabs();
          }
          // if user is not logged in return to log in page
          else {
            return const LoginRegisterPage();
          }
        },
      ),
    );
  }
}
