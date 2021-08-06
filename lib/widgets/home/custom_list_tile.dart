import 'package:flutter/material.dart';
import 'package:tourism_app/constant/colors.dart';

class CustomListTile extends StatelessWidget {
  final String title, subtitle;

  const CustomListTile({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(
        title,
        style: TextStyle(color: black, fontSize: 16, fontFamily: "avenir-book"),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontFamily: "avenir-book"),
      ),
    );
  }
}
