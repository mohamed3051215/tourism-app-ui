import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourism_app/constant/colors.dart';

class CustomAuthButton extends StatelessWidget {
  final String text, image;
  final Color color;

  const CustomAuthButton(
      {Key? key, required this.text, required this.color, required this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 240,
        height: 44,
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(white),
              elevation: MaterialStateProperty.all<double>(0),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                      side: BorderSide(color: color)))),
          onPressed: () {},
          child: Row(
            children: [
              SizedBox(width: 10),
              SvgPicture.asset(
                image,
                color: color,
              ),
              SizedBox(width: 30),
              Text(text,
                  style: TextStyle(fontFamily: "avenir-book", color: color)),
            ],
          ),
        ));
  }
}
