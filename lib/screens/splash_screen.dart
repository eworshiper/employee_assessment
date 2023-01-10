import 'dart:async';
// import 'dart:html';

import 'package:dashboard/screens/login_screen.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(const Duration(seconds: 10), () {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>LoginPage()), (route) => false);
    });

    super.initState();   
  }
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
         child: Icon(
              Icons.person,
              size: 180,
              color: kDarkBlue,
        )
      ),
    );   
  }
  
}