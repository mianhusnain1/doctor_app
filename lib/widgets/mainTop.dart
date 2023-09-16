import 'package:flutter/cupertino.dart';

class MainTop extends StatelessWidget {
  const MainTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,

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
