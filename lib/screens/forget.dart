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
  late Size mq;
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      // ignore: sized_box_for_whitespace
      body: Container(
        height: double.infinity,
        width: mq.width,
        child: ListView(
          children: [
            Column(
              children: [
                const MainTop(),
                const Logo(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: mq.height * 0.065,
                  width: mq.width - 80,
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
                              borderSide: const BorderSide(color: myColor))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: mq.width - 80,
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
                                        builder: (context) => Login()));
                              },
                              msg:
                                  "We have sent you an email. Please update your password and login again.",
                            ),
                          ));
                    },
                    child: Container(
                      height: mq.height * 0.065,
                      width: mq.width,
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
