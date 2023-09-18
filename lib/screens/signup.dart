// import 'package:doctor_app/screens/login.dart';
import 'package:doctor_app/screens/done.dart';
import 'package:doctor_app/screens/login.dart';
import 'package:doctor_app/widgets/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Column(
                children: [
                  MainTop(),
                  SizedBox(
                      height: 120,
                      width: 120,
                      child: SvgPicture.asset("images/doctor.svg")),
                  const SizedBox(
                    child: Text(
                      "SIGN IN",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    child: Text(
                      "SIGN UP",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    // this is for username
                    height: 40,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
