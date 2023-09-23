// ignore_for_file: sized_box_for_whitespace

import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctor_app/main.dart';
import 'package:doctor_app/screens/login.dart';
import 'package:doctor_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  Welcome({super.key});
  final List<String> images = [
    'images/welcome.jpg',
    'images/welcome1.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        child: Container(
          // width: MediaQuery.of(context).size.width - 80,
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              const SizedBox(
                child: Text(
                  "Welcome",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: myColor1,
                      fontSize: 34,
                      fontWeight: FontWeight.bold),
                ),
              ),
              CarouselSlider(
                  items: images.map((image) {
                    return Image.asset(
                      image,
                      fit: BoxFit.contain,
                    );
                  }).toList(),
                  options: CarouselOptions(
                    autoPlayInterval: Duration(milliseconds: 2000),
                    // autoPlayAnimationDuration: Duration(milliseconds: 400),

                    height: 500,
                    autoPlay: true,
                    viewportFraction: 0.8,
                    // Adjust the fraction as needed
                    aspectRatio: 16 / 9, // Adjust the fraction as needed
                  )),
              SizedBox(
                width: MediaQuery.of(context).size.width - 80,
                child: Btn(
                    title: "Continue",
                    action: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
