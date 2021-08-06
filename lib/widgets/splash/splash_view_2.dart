import 'package:flutter/material.dart';
import 'package:tourism_app/constant/colors.dart';

class SplashView2 extends StatelessWidget {
  const SplashView2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("hıstory Culture glass",
            style: TextStyle(
                color: white, fontFamily: "avenir-book", fontSize: 13)),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 300,
          child: Text(
            "Hagia Sophia Deesis Mosaic Vase",
            style: TextStyle(color: white, fontSize: 40),
            textAlign: TextAlign.center,
          ),
        ),
        Text("€3450",
            style: TextStyle(
                color: white, fontSize: 20, fontFamily: "avenir-heavy")),
        Image.asset("assets/images/splash screen/splash screen 2.png"),
      ],
    );
  }
}

