import 'package:flutter/material.dart';
import 'package:tourism_app/constant/colors.dart';
import 'package:tourism_app/screens/create_account_screen.dart';
import 'package:tourism_app/screens/login_screen.dart';

import 'package:tourism_app/widgets/splash/dot_container.dart';
import 'package:tourism_app/widgets/splash/splash_view_1.dart';
import 'package:tourism_app/widgets/splash/splash_view_2.dart';
import 'package:tourism_app/widgets/splash/splash_view_3.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int pageIndex = 0;
  PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DotContainer(
                    active: pageIndex == 0,
                  ),
                  DotContainer(
                    active: pageIndex == 1,
                  ),
                  DotContainer(
                    active: pageIndex == 2,
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: PageView(
                onPageChanged: (int index) {
                  setState(() {
                    pageIndex = index;
                  });
                },
                controller: _pageController,
                children: [
                  SplashView1(),
                  SplashView2(),
                  SplashView3(),
                ],
              ),
            ),
            pageIndex == 2
                ? Container(
                    width: 240,
                    height: 44,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.transparent),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              side: BorderSide(color: white),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Text("Sign In",
                            style: TextStyle(
                                color: white,
                                fontFamily: "avenir-medium",
                                fontSize: 16,
                                letterSpacing: 5))),
                  )
                : SizedBox(),
            SizedBox(height: 15),
            Container(
              width: 240,
              height: 44,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)))),
                  onPressed: () {
                    pageIndex != 2
                        ? _pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease)
                        : Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateAccountScreen()));
                  },
                  child: Text(pageIndex == 2 ? "Creatıve account" : "Continue",
                      style: TextStyle(
                          color: white,
                          fontFamily: "avenir-medium",
                          fontSize: 16,
                          letterSpacing: pageIndex == 2 ? 3 : 5))),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ));
  }
}
