import 'package:flutter/material.dart';

import 'package:tourism_app/constant/colors.dart';
import 'package:tourism_app/screens/login_screen.dart';
import 'package:tourism_app/widgets/auth/icon_button_for_auth.dart';
import 'package:tourism_app/widgets/auth/text_field_with_icon.dart';

import 'loading_screen.dart';

class CreateAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: black,
        appBar: AppBar(
          backgroundColor: black,
          leading: BackButton(color: white),
          title: Text(
            "REGISTER",
            style: TextStyle(
                color: white, fontSize: 13, fontFamily: "avenir-book"),
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Padding(
              padding: EdgeInsets.all(30),
              child: ListView(
                children: [
                  Row(),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Create your account",
                      style: TextStyle(color: Colors.black, fontSize: 30)),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 260,
                    child: Text(
                        "After your registration is complete, you can see our opportunity products.",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                        textAlign: TextAlign.center),
                  ),
                  SizedBox(height: 30),
                  CustomTextField(hintText: "Username"),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextField(hintText: "Email"),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextField(hintText: "Password"),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    hintText: "Phone",
                    phone: true,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 240,
                    height: 44,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)))),
                        child: Text("Sign Up",
                            style: TextStyle(
                                fontFamily: "avenir-medium",
                                fontSize: 15,
                                color: white,
                                letterSpacing: 3)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoadingScreen()));
                        }),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomAuthButton(
                    color: red,
                    text: "Continue with Google",
                    image: "assets/icons/google.svg",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomAuthButton(
                    color: Colors.blue,
                    text: "Continue with Facebook",
                    image: "assets/icons/facebook.svg",
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Container(
                      width: 240,
                      height: 44,
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text("Already have an account? Sign In",
                              style: TextStyle(fontFamily: "avenir-book")))),
                ],
              )),
        ));
  }
}
