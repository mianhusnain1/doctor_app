// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:doctor_app/main.dart';
import 'package:doctor_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
                const SizedBox(
                  height: 15,
                ),
                Stack(
                  children: [
                    Container(
                      height: 110,
                      width: MediaQuery.of(context).size.width - 40,
                      decoration: BoxDecoration(
                          color: myColor1,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: const Text(
                          "Your Wallet",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80.0, top: 90),
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width - 200,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  blurRadius: 4,
                                  offset: Offset(1, 3))
                            ]),
                        child: const Center(
                          child: Text(
                            "USE NOW",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade400,
                              blurRadius: 4,
                              offset: const Offset(1, 1))
                        ],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: myColor1)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11.0),
                          child: Icon(
                            Icons.calendar_month,
                            color: myColor1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text(
                            "Your Appointments",
                            style: TextStyle(
                                color: myColor1,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: myColor1)),
                  child: const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        hintText: "Search any Doctor",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: myColor1)),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 9.0),
                        child: CircleAvatar(
                          backgroundColor: myColor,
                          radius: 30,
                          child: Icon(
                            Icons.calendar_month,
                            size: 40,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          "Book Appointment",
                          style: TextStyle(
                              color: myColor1,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: myColor1)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 9.0),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: myColor,
                          child: Icon(
                            Icons.video_call,
                            size: 45,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 9.0),
                        child: Text(
                          "Online Video Consultation",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                            border: Border.all(color: myColor1),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Container(
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                            border: Border.all(color: myColor1),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
