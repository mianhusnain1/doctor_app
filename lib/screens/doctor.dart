import 'package:doctor_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    //  late Size mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ListView(
              children: [
                Container(
                  child: MainTop(),
                ),
                SizedBox(
                  child: Text("Doctor Profile"),
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Container(), Container()],
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
