import 'package:flutter/material.dart';
import 'package:tourism_app/constant/colors.dart';

class SplashView1 extends StatelessWidget {
  const SplashView1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/splash screen/splash screen 1.png",
          fit: BoxFit.cover,
        ),
        Text("€5650",
            style: TextStyle(
                fontSize: 20, fontFamily: "avenir-heavy", color: white)),
        Container(
          width: 250,
          child: Text("Gülçehre İbrikLimited Edition",
              style: TextStyle(
                  fontSize: 40, fontFamily: "avenir-heavy", color: white)),
        ),
        Expanded(
          child: Text(""),
        ),
      ],
    );
  }
}
