import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourism_app/constant/colors.dart';

class CustomShoppingBag extends StatelessWidget {
  const CustomShoppingBag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Stack(clipBehavior: Clip.none, children: [
        SvgPicture.asset("assets/icons/Icons-icon-shopping-bag.svg"),
        Positioned(
          top: 10,
          right: -7,
          child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(color: brown, shape: BoxShape.circle),
              child: Center(
                child: Text("8",
                    style: TextStyle(
                        fontSize: 10,
                        fontFamily: "avenir-medium",
                        color: white)),
              )),
        ),
      ]),
    );
  }
}
