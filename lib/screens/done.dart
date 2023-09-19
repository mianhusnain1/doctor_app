import 'package:flutter/material.dart';
import 'package:doctor_app/widgets/widgets.dart';
import 'package:doctor_app/main.dart';

class Done extends StatefulWidget {
  const Done(
      {super.key,
      required this.msg,
      required this.ontap1,
      required this.btnmsg});
  final String msg;
  final String btnmsg;
  final VoidCallback ontap1;
  @override
  State<Done> createState() => _DoneState();
}

class _DoneState extends State<Done> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      decoration: const BoxDecoration(color: Colors.white),
      child: ListView(children: [
        Column(
          children: [
            const SizedBox(
              child: MainTop(),
            ),
            SizedBox(
              height: 120,
              width: 120,
              child: Image.asset("images/doctor.png"),
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 80,
              width: 80,
              child: Image.asset("images/ok.png"),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: Text(
                widget.msg,
                style: const TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50),
                child: InkWell(
                  onTap: widget.ontap1,
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: myColor,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              offset: Offset(1, 1))
                        ]),
                    child: Center(
                      child: Text(
                        widget.btnmsg,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            )
            // SizedBox(
            //   child: ElevatedButton(
            //       onPressed: () {
            //         Navigator.of(context).pushReplacement(
            //           MaterialPageRoute(
            //             builder: (context) => Login(),
            //           ),
            //         );
            //       },
            //       child: Text("hello")),
            // )
          ],
        ),
      ]),
    ));
  }
}
