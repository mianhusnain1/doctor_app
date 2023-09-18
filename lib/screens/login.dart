// ignore_for_file: prefer_const_constructors

import 'package:doctor_app/main.dart';
// import 'package:doctor_app/screens/done.dart';
import 'package:doctor_app/screens/forget.dart';
// import 'package:doctor_app/screens/home.dart';
import 'package:doctor_app/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainTop(),
                SizedBox(
                    height: 120,
                    width: 120,
                    child: SvgPicture.asset("images/doctor.svg")),
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
                Padding(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: Container(
                    height: 55,
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
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40, right: 40),
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
                              offset: Offset(1, 1))
                        ]),
                    child: Center(
                      child: TextField(
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0, left: 190),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Forget(),
                          ));
                    },
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
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40),
                  child: SizedBox(
                    child: InkWell(
                      onTap: () {},
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
                                  offset: Offset(1, 1))
                            ]),
                        child: Center(
                          child: Text(
                            "SIGN IN",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                  child: Text("OR"),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      LoginBtn(
                        img: "images/facebook.png",
                        ontap: () {},
                      ),
                      LoginBtn(
                        img: "images/Google.png",
                        ontap: () {},
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
                        Container(
                          child: const Text(
                            "Don't have an account?",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Container(
                          child: Text(
                            " SIGN UP",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: myColor),
                          ),
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
