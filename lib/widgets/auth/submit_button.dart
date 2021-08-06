import 'package:flutter/material.dart';
import 'package:tourism_app/constant/colors.dart';

class SubmitButton extends StatelessWidget {
  final String title;
  final Function func;
  const SubmitButton({Key? key, required this.title, required this.func})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 44,
      child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)))),
          child: Text(title,
              style: TextStyle(
                  fontFamily: "avenir-medium",
                  fontSize: 15,
                  color: white,
                  letterSpacing: 3)),
          onPressed: () {
            func();
          }),
    );
  }
}
