import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism_app/screens/bottom_navigation_bar_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  // ignore: unused_field
  var _loadingTimer;
  @override
  void initState() {
    _loadingTimer = Timer.periodic(
        Duration(
          seconds: 2,
        ), (timer) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BottomNavigationBarScreen()));
      timer.cancel();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          CupertinoActivityIndicator(
            radius: 40,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Loading",
              style: TextStyle(fontFamily: "avenir-medium", fontSize: 14))
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    ));
  }
}
