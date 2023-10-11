import 'package:doctor_app/screens/done.dart';
import 'package:doctor_app/screens/login.dart';
import 'package:doctor_app/widgets/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:doctor_app/main.dart';
// import 'package:doctor_app/screens/verify.dart';

class Forget extends StatefulWidget {
  const Forget({super.key});

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  final TextEditingController emailController = TextEditingController();

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
                  child: TextContainer(
                      search: "Write email here...",
                      icon: Icons.email,
                      controller: emailController,
                      obscuretext: false),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: mq.width - 80,
                  child: InkWell(
                    onTap: () async {
                      try {
                        final auth = FirebaseAuth.instance;
                        await auth
                            .sendPasswordResetEmail(email: emailController.text)
                            .then((value) => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Done(
                                    btnmsg: "Back to Login",
                                    ontap1: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Login(),
                                          ));
                                    },
                                    msg:
                                        "We have sent you an email. Please update your password and login again.",
                                  ),
                                )));
                      } catch (e) {}
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
                          "Reset Password",
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
