import 'package:flutter/material.dart';
import 'package:tourism_app/constant/colors.dart';

class DotContainer extends StatelessWidget {
  final bool active;

  const DotContainer({Key? key, required this.active}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
          decoration: BoxDecoration(
            color: active ? brown : darkGrey,
            shape: BoxShape.circle,
          ),
          width: active ? 10 : 7 ,
          height: 10),
    );
  }
}
