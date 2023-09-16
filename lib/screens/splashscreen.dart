// import 'package:doctor_app/screens/home.dart';
import 'dart:async';

import 'package:doctor_app/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Color myColor;
  @override
  // void initState() {
  //   super.initState();
  //   Timer(const Duration(seconds: 3), () {
  //     Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(
  //         builder: (context) => const Home(),
  //       ),
  //     );
  //   });
  // }
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => Login(),
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: myColor),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  // height: MediaQuery.of(context).size.height * 0.35,
                  ),
              SizedBox(
                height: 160,
                width: 160,
                child: Image.asset("images/doctor.png"),
              ),
              SizedBox(
                height: 10,
              ),
              SpinKitFadingCircle(
                color: Colors.white,
                size: 38,
              )
            ],
          ),
        ),
      ),
    );
  }
}
