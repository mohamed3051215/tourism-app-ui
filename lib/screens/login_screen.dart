import 'package:flutter/material.dart';
import 'package:tourism_app/constant/colors.dart';
import 'package:tourism_app/screens/forgot_password_screen.dart';
import 'package:tourism_app/screens/loading_screen.dart';
import 'package:tourism_app/widgets/auth/icon_button_for_auth.dart';
import 'package:tourism_app/widgets/auth/submit_button.dart';
import 'package:tourism_app/widgets/auth/text_field_with_icon.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: black,
        leading: BackButton(color: white),
        title: Text(
          "Log In",
          style:
              TextStyle(color: white, fontSize: 13, fontFamily: "avenir-book"),
        ),
        centerTitle: true,
      ),
      backgroundColor: black,
      body: Container(
          decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Container(
                      height: 450,
                      child: Column(children: [
                        Row(),
                        SizedBox(
                          height: 30,
                        ),
                        Text("Let’s sign you in",
                            style: TextStyle(color: Colors.black, fontSize: 30),
                            textAlign: TextAlign.center),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 260,
                          child: Text("Welcome back, you’ve been missed!",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                              textAlign: TextAlign.center),
                        ),
                        SizedBox(height: 50),
                        CustomTextField(hintText: "Username or Email"),
                        SizedBox(height: 15),
                        CustomTextField(
                          hintText: "Passsword",
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    value: _rememberMe,
                                    onChanged: (data) {
                                      setState(() {
                                        _rememberMe = !_rememberMe;
                                      });
                                    }),
                                Text("Remember me",
                                    style: TextStyle(fontFamily: "avenir-book"))
                              ],
                            ),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgotPasswordScreen()));
                                },
                                child: Text(
                                  "Forgot password?",
                                  style: TextStyle(fontFamily: "avenir-book"),
                                ))
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                        SizedBox(height: 30),
                        SubmitButton(
                          title: "Sign In",
                          func: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoadingScreen()));
                          },
                        ),
                      ]),
                    ),
                  ),
                  Expanded(
                    child: Column(),
                  ),
                  CustomAuthButton(
                      text: "Continue with Google",
                      color: red,
                      image: "assets/icons/google.svg"),
                  SizedBox(height: 20),
                  CustomAuthButton(
                      text: "Continue with Facebook",
                      color: Colors.blue,
                      image: "assets/icons/facebook.svg"),
                  TextButton(
                      child: Text("Don’t have an account? Sign Up",
                          style: TextStyle(
                              color: Colors.black, fontFamily: "avenir-book")),
                      onPressed: () {})
                ],
              ))),
    );
  }
}
