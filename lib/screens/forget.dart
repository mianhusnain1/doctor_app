import 'package:doctor_app/screens/done.dart';
import 'package:doctor_app/screens/login.dart';
import 'package:doctor_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:doctor_app/main.dart';
// import 'package:doctor_app/screens/verify.dart';

class Forget extends StatefulWidget {
  const Forget({super.key});

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Column(
              children: [
                const MainTop(),
                const Logo(),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade400,
                              blurRadius: 4,
                              // spreadRadius: .1,
                              offset: const Offset(1, 1))
                        ]),
                    child: Center(
                      child: TextField(
                        cursorColor: myColor,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.email,
                              color: Colors.grey,
                            ),
                            hintText: "Email",
                            hintStyle: const TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: myColor))),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40),
                  child: SizedBox(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Done(
                                btnmsg: "Back to Login",
                                ontap1: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Login()));
                                },
                                msg:
                                    "We have sent you an email. Please update your password and login again.",
                              ),
                            ));
                      },
                      child: Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: myColor,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade400,
                                  blurRadius: 4,
                                  offset: const Offset(1, 1))
                            ]),
                        child: const Center(
                          child: Text(
                            "Get Email Verification",
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
