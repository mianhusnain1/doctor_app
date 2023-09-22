// ignore_for_file: prefer_const_constructors

import 'package:doctor_app/main.dart';
import 'package:doctor_app/screens/done.dart';
import 'package:doctor_app/screens/forget.dart';
import 'package:doctor_app/screens/home.dart';
import 'package:doctor_app/screens/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainTop(),
                Logo(),
                const SizedBox(
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  // this is for username
                  height: 40,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 80,
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade400,
                            blurRadius: 4,
                            spreadRadius: .1,
                            offset: Offset(0, 1))
                      ]),
                  child: Center(
                    child: TextField(
                      controller: email,
                      cursorColor: myColor,
                      decoration: InputDecoration(
                          // contentPadding: EdgeInsets.only(top: 13),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.grey,
                          ),
                          hintText: "Username",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: myColor))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 80,
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade400,
                            blurRadius: 4,
                            // spreadRadius: .1,
                            offset: Offset(1, 1))
                      ]),
                  child: Center(
                    child: TextField(
                      controller: password,
                      obscureText: true,
                      cursorColor: myColor,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: myColor))),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Forget(),
                        ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Container(
                      child: SizedBox(
                        child: Text("Forget Password?"),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 80,
                  // height: MediaQuery.of(context).size.height * 0.06,
                  child: Btn(
                    title: "LOGIN",
                    action: () async {
                      try {
                        final auth = FirebaseAuth.instance;
                        await auth
                            .signInWithEmailAndPassword(
                                email: email.text.toString(),
                                password: password.text.toString())
                            .then(
                              (value) => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home(),
                                ),
                              ),
                            );
                      } catch (e) {}
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                  child: Text("Or Login with"),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      LoginBtn(
                        img: "images/facebook.png",
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Done(
                                    msg: "Login with Facebook",
                                    ontap1: () {},
                                    btnmsg: "Back to Login"),
                              ));
                        },
                      ),
                      LoginBtn(
                        img: "images/Google.png",
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Done(
                                    msg: "Login with Google",
                                    ontap1: () {},
                                    btnmsg: "Back to Login"),
                              ));
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                SizedBox(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signup(),
                          ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          " SIGN UP",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: myColor),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LoginBtn extends StatelessWidget {
  const LoginBtn({super.key, required this.img, required this.ontap});
  final String img;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      child: InkWell(
        onTap: ontap,
        child: Container(
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
              // color: Colors.blue.shade300,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black)),
          child: Container(
            height: 50,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(img),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
