import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool phone;
  final TextEditingController? controller;
   CustomTextField({Key? key, required this.hintText, this.phone = false, this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontFamily: "avenir-book", fontSize: 16)),
      style: TextStyle(fontFamily: "avenir-book", fontSize: 16),
      keyboardType: phone ? TextInputType.number : TextInputType.text,
    );
  }
}
