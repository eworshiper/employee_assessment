import 'dart:async';
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
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
        context, '/get-started', (route) => false);
    });

    super.initState();   
  }
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
         child: Icon(
              Icons.work,
              size: 180,
              color: kDarkBlue,
        )
      ),
    );   
  }
  
}