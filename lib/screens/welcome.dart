import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctor_app/main.dart';
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
      backgroundColor: myColor,
      body: Container(
        height: 600,
        width: MediaQuery.of(context).size.width - 40,
        child: Column(children: [
          CarouselSlider(
              items: images.map((image) {
                return Image.asset(
                  image,
                  fit: BoxFit.contain,
                );
              }).toList(),
              options: CarouselOptions(
                height: 300,
                autoPlay: true,
              ))
        ]),
      ),
    );
  }
}
