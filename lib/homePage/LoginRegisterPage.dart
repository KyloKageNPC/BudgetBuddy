import 'package:bubget_buddy/homePage/register_page.dart';
import 'package:bubget_buddy/homePage/log_in.dart';
import 'package:flutter/material.dart';

class LoginRegisterPage extends StatefulWidget {
  const LoginRegisterPage({super.key});

  @override
  State<LoginRegisterPage> createState() => _LoginRegisterPageState();
}

class _LoginRegisterPageState extends State<LoginRegisterPage> {
  // initialize show login page
  bool showLoginPage= true;

  // toggle between login and register page
  void togglePages(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginPage(
        onTap: togglePages,
      );
    }else {
      return RegisterPage(
        onTap: togglePages,
      );
    }
  }
}
