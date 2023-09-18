import 'package:doctor_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
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
                SizedBox(
                    height: 120,
                    width: 120,
                    child: SvgPicture.asset("images/doctor.svg")),
                SizedBox(
                  child: Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width - 30,
                    child: Text(
                        "We have sent you a verification at your given email address. Please go to your email and verify your email."),
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
