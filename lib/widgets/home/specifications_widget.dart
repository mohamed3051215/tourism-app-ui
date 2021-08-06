import 'package:flutter/material.dart';

class SpecificationsWidget extends StatelessWidget {
  final String leftText, rightText;

  const SpecificationsWidget(
      {Key? key, required this.leftText, required this.rightText})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          SizedBox(height: 21),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(leftText,
                  style: TextStyle(fontFamily: "avenir-book", fontSize: 13.4)),
              Text(rightText, style: TextStyle(fontFamily: "avenir-book"))
            ],
          ),
          SizedBox(
            height: 21,
          ),
          Divider(),
        ],
      ),
    );
  }
}
