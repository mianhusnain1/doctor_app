// import 'package:doctor_app/screens/login.dart';
import 'package:doctor_app/screens/done.dart';
import 'package:doctor_app/screens/login.dart';

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
      appBar: AppBar(
        title: Text("This is Signup Page"),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(),
            Center(
              child: SizedBox(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => Done(
                                btnmsg: "Now Login",
                                ontap1: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Login(),
                                      ));
                                },
                                msg:
                                    "Your account has been Successfully Created.",
                              )));
                    },
                    child: Text("Signup")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
