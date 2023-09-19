// ignore_for_file: unnecessary_const

import 'package:doctor_app/main.dart';
import 'package:doctor_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  late Size mq;
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          height: double.infinity,
          width: mq.width,
          child: ListView(
            children: [
              Column(
                children: [
                  const MainTop(),
                  const SizedBox(
                    child: Text(
                      "Video Consultation",
                      style: TextStyle(
                        color: myColor1,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: mq.width - 40,
                    height: mq.height * 0.05,

                    // ignore: sort_child_properties_last
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: "Search any Doctor",
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          )),
                    ),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: myColor1),
                    ),
                  ),
                  GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    children: [
                      Container(
                        height: mq.height * 0.2,
                        width: mq.width * 0.42,
                        decoration: BoxDecoration(color: Colors.black),
                        child: const Text("Hello"),
                      ),
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}
