// import 'package:doctor_app/main.dart';
import 'package:doctor_app/screens/verify.dart';
// import 'package:doctor_app/widgets/diaologs.dart';
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
                    SizedBox(
                      child: TextContainer(
                          search: "Full Name",
                          icon: CupertinoIcons.profile_circled,
                          controller: nameController,
                          obscuretext: false),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: TextContainer(
                          search: "Email",
                          icon: Icons.email,
                          controller: emailController,
                          obscuretext: false),
                    ),
                    const SizedBox(
                      // this is for username
                      height: 20,
                    ),
                    SizedBox(
                      child: TextContainer(
                          search: "Password",
                          icon: Icons.lock,
                          controller: passwordController,
                          obscuretext: true),
                    ),
                    const SizedBox(
                      // this is for username
                      height: 20,
                    ),
                    SizedBox(
                      child: TextContainer(
                          search: "Confirm Password",
                          icon: Icons.lock,
                          controller: passwordController,
                          obscuretext: false),
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
                            print("FDOne");

                            // errorDialog(context, "message", "title");
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
