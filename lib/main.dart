import 'package:flutter/material.dart';
import 'package:dashboard/screens/login_screen.dart';
import 'package:dashboard/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/get-started': (context) => LoginPage(),
      },
    );
  }
}
