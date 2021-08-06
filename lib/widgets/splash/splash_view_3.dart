import 'package:flutter/material.dart';
import 'package:tourism_app/constant/colors.dart';

class SplashView3 extends StatelessWidget {
  const SplashView3({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/splash screen/splash screen 3.png"),
        Text("€3150", style: TextStyle(color: white, fontSize: 20)),
        SizedBox(
          height: 10,
        ),
        Text(
          'hıstory Culture glass',
          style:
              TextStyle(color: white, fontSize: 13, fontFamily: "avenir-book"),
        ),
        Text("Mystical Vase Limited Edition",
            style: TextStyle(
              color: white,
              fontSize: 40,
            ),
            textAlign: TextAlign.center)
      ],
    );
  }
}
