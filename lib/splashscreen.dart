import 'package:codescanner/login.dart';
import 'package:codescanner/scan.dart';
import 'package:flutter/material.dart';
import 'dart:async';

// import 'package:sysscanner/webview.dart';

class SplashScreenPage extends StatefulWidget {
  SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return Login();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 25, 167, 13),
      body: Center(
        child: Image.asset(
          "images/logo imud.png",
          width: 400.0,
          height: 250.0,
        ),
      ),
    );
  }
}
