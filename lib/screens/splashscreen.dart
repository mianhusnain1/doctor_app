// import 'package:doctor_app/screens/home.dart';
import 'dart:async';
// import 'package:doctor_app/screens/login.dart';
import 'package:doctor_app/screens/welcome.dart';
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
      const Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => Welcome(),
          ),
        );
      },
    );
  }

  @override
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
              const SizedBox(
                  // height: MediaQuery.of(context).size.height * 0.35,
                  ),
              SizedBox(
                height: 160,
                width: 160,
                child: Image.asset("images/doctor.png"),
              ),
              const SizedBox(
                height: 10,
              ),
              const SpinKitFadingCircle(
                color: Colors.white,
                size: 38,
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                child: Text(
                  "Getting Data....",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
