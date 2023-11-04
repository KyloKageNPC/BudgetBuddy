import 'package:bubget_buddy/components/my_button.dart';
import 'package:bubget_buddy/components/my_textfeild.dart';

import 'package:bubget_buddy/services/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:bubget_buddy/components/square_tile.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controllers
  final emailController= TextEditingController();
  final passwordController= TextEditingController();

  // user sign in method
  void signUserIn() async{
    // show loading circle
    showDialog(context: context, builder: (context){
      return const Center(
        child: CircularProgressIndicator(

        ),
      );
    },
    );
    Navigator.pop(context);

    //try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text
      );
      //pop the loading circal

    }
    // this code cathes erros in the email and password and displays them to user
    on FirebaseAuthException catch (e){
      //pop the loading circal
      Navigator.pop(context);

      //wrong email
      if(e.code =="not found "){
        wrongEmailMessage();
      }

      //wrong password
      else if(e.code =='wrong password'){
        wrongPasswordMessage();
      }
    }


  }
  //wrong email message popup
  void wrongEmailMessage(){
    showDialog(context: context, builder: (context) {
      return const AlertDialog(
        title: Text('Incorrect Email'),
      );
    },);
  }

  void wrongPasswordMessage(){
    showDialog(context: context, builder: (context) {
      return const AlertDialog(
        title: Text('Incorrect password'),
      );
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Center(
          child:  SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50,),

                //logo
                const Icon(
                  Icons.monetization_on_sharp,
                  color: Colors.white,
                  size: 100,),

                const SizedBox(height: 40,),

                //welcome back
                Text('welcome back',
                  style: TextStyle(color: Colors.white,
                      fontSize: 21),
                ),
                const SizedBox(height: 25,),

                //username textfield
                MyTextField(
                  controller: emailController,
                  hintText: 'email',
                  obscureText: false,
                ),

                const SizedBox(height: 25,),

                //password textfeild
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 15,),

                //forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Forgot Password ?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 15,),

                //sign in button
                MyButton(
                  text: 'Sign In',
                  onTap: signUserIn,
                ),

                const SizedBox(height: 25,),

                //or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color:Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('or continue with',
                          style: TextStyle(color: Colors.white),),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color:Colors.white10,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25,),

                // goofle + apple sign in button
                SquareTile(
                    onTap: ()=>AuthService().signInWithGoogle(),
                    imagePath: 'lib/images/pngwing.com.png'),

                SizedBox(width: 15,),

                const SizedBox(
                  height: 15,
                ),

                // register now if not a memeber
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a registerd member ? ',
                    style: TextStyle(
                      color: Colors.white
                    )),

                    SizedBox(width: 4,),

                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text('Register now',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),),
                    ),

                  ],)


              ],),
          ),
        ),
      ),
    );
  }
}