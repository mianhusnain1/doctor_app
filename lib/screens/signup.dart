import 'package:doctor_app/main.dart';
import 'package:doctor_app/screens/verify.dart';
import 'package:doctor_app/widgets/diaologs.dart';
import 'package:doctor_app/widgets/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final _formkey = GlobalKey<FormState>();

class Signup extends StatefulWidget {
  Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  @override
  void initState() {
    nameController;
    emailController;
    passwordController;
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  late Size mq;
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
          height: double.infinity,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    const MainTop(),
                    const Logo(),
                    const SizedBox(
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                            fontSize: 31.5, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      // this is for username
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
                                spreadRadius: .1,
                                offset: const Offset(0, 1))
                          ]),
                      child: Center(
                        child: TextFormField(
                          cursorColor: myColor,
                          controller: nameController,
                          decoration: InputDecoration(
                              // contentPadding: EdgeInsets.only(top: 13),
                              prefixIcon: const Icon(
                                CupertinoIcons.profile_circled,
                                color: Colors.grey,
                              ),
                              hintText: "Full Name",
                              hintStyle: const TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      const BorderSide(color: myColor))),
                          // validator: (name) {
                          //   if (name!.isEmpty) {
                          //     return 'Name is required.';
                          //   } else if (name.length < 8) {
                          //     return 'Name should have at least 8 characters.';
                          //   }
                          //   return null;
                          // },
                        ),
                      ),
                    ),
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
                        child: TextFormField(
                          controller: emailController,
                          initialValue: null,
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
                                  borderSide:
                                      const BorderSide(color: myColor))),
                        ),
                      ),
                    ),
                    const SizedBox(
                      // this is for username
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
                          obscureText: true,
                          controller: passwordController,
                          cursorColor: myColor,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Colors.grey,
                              ),
                              hintText: "Password",
                              hintStyle: const TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      const BorderSide(color: myColor))),
                        ),
                      ),
                    ),
                    const SizedBox(
                      // this is for username
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
                          obscureText: true,
                          cursorColor: myColor,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Colors.grey,
                              ),
                              hintText: "Confirm Password",
                              hintStyle: const TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      const BorderSide(color: myColor))),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                        width: mq.width - 80,
                        child: Btn(
                          title: "SIGN UP",
                          action: () async {
                            // if (_formkey.currentState!.validate())
                            print("email = ${emailController.text}");
                            errorDialog(context, "message", "title");
                            // Form is valid, perform signup
                            try {
                              final auth = FirebaseAuth.instance;

                              await auth
                                  .createUserWithEmailAndPassword(
                                email: emailController.text.toString(),
                                password: passwordController.text.toString(),
                              )
                                  .then((value) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Verify(),
                                  ),
                                );
                              });
                            } catch (e) {
                              print("Error is : $e");
                            }
                          },
                        )),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
