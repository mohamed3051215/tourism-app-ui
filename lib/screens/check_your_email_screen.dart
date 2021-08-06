import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourism_app/constant/colors.dart';
import 'package:tourism_app/widgets/auth/submit_button.dart';

import 'home_screen.dart';

class CheckYourEmailScreen extends StatelessWidget {
  const CheckYourEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: white,
          actions: [Icon(Icons.close)],
        ),
        backgroundColor: white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(),
            Expanded(child: Text("")),
            Container(
              width: 140,
              decoration: BoxDecoration(
                  border: Border.all(color: brown.withOpacity(.1), width: 10),
                  shape: BoxShape.circle),
              height: 120,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: brown.withOpacity(.3), width: 10),
                    shape: BoxShape.circle),
                child: Container(
                  decoration:
                      BoxDecoration(color: brown, shape: BoxShape.circle),
                  child: Stack(children: [
                    Positioned(
                        top: 45,
                        right: 54,
                        child: SvgPicture.asset("assets/icons/Path 52.svg")),
                    Center(
                      child:
                          SvgPicture.asset("assets/icons/Icons-16px-Send.svg"),
                    )
                  ]),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text("Check your email", style: TextStyle(fontSize: 30)),
            SizedBox(height: 15),
            Container(
              width: 300,
              child: Text(
                  "We've sent you instructions on how to reset the password (also check the Spam folder).",
                  style: TextStyle(fontFamily: "avenir-book"),
                  textAlign: TextAlign.center),
            ),
            Expanded(child: SizedBox()),
            SubmitButton(
                title: "Open my mail client",
                func: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                }),
            SizedBox(height: 30),
          ],
        ));
  }
}
