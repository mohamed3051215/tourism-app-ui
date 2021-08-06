import 'package:flutter/material.dart';
import 'package:tourism_app/constant/colors.dart';
import 'package:tourism_app/screens/check_your_email_screen.dart';
import 'package:tourism_app/widgets/auth/submit_button.dart';


class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
        leading: BackButton(color: white),
        title: Text(
          "REGISTER",
          style:
              TextStyle(color: white, fontSize: 13, fontFamily: "avenir-book"),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Row(),
              Text(
                "Forgot your password?",
                style: TextStyle(color: black, fontSize: 27),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter your email address and we will send you instructions on how to reset your password.",
                style: TextStyle(color: black, fontFamily: "avenir-book"),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 45,
              ),
              TextField(
                onChanged: (text) {
                  setState(() {});
                },
                controller: _controller,
                decoration: InputDecoration(
                    hintText: "Email address",
                    hintStyle:
                        TextStyle(fontFamily: "avenir-book", fontSize: 16)),
                style: TextStyle(fontFamily: "avenir-book", fontSize: 16),
              ),
              Expanded(child: SizedBox()),
              SubmitButton(
                  title: _controller.text != ""
                      ? "Reset my password"
                      : 'Recover email',
                  func: () {
                    _controller.text != ""
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CheckYourEmailScreen()))
                        : setState(() {});
                  })
            ],
          ),
        ),
      ),
    );
  }
}
