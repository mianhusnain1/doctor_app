import 'package:doctor_app/main.dart';
import 'package:doctor_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

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
        child: ListView(
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
            SizedBox(
              width: mq.width - 40,
              height: mq.height * 0.05,
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: "Search any Doctor",
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: myColor1),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: mq.height,
              child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Center(
                          child: Container(
                        decoration: const BoxDecoration(
                          color: myColor1,
                        ),
                      )),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
