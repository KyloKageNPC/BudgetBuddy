import 'package:bubget_buddy/bottomTab.dart';
import 'package:bubget_buddy/homePage/auth_page.dart';
import 'package:bubget_buddy/screens/all_expenses.dart';
import 'package:bubget_buddy/screens/chart_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'models/database_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );
  runApp(const MyApp());
}

/*void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => DatabaseProvider(),
  child: const MyApp(
  ),
  ));}*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context)=> DatabaseProvider(),
    builder:(context, child)=> const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AuthPage(),
      routes: {

      },

    )
    );
  }
}

