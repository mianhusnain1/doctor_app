import 'package:doctor_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainTop extends StatelessWidget {
  const MainTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.165,

      width: MediaQuery.of(context).size.width,
      // child: SvgPicture.asset(
      //   "images/bg.svg",
      // ),
      child: Image.asset(
        "images/Bg.png",
        fit: BoxFit.cover,
      ),
    );
  }
}

class Btn extends StatelessWidget {
  const Btn({super.key, required this.title, required this.action});
  final String title;
  final VoidCallback action;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.065,
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
        child: Center(
          child: Text(
            title,
            style: const TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class TextContainer extends StatelessWidget {
  const TextContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        // width: MediaQuery.of(context).size.width - 300,
        child: SvgPicture.asset("images/doctor.svg"));
  }
}
