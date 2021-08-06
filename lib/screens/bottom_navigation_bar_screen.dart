import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourism_app/constant/colors.dart';
import 'package:tourism_app/screens/categories_screen.dart';
import 'package:tourism_app/screens/home_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarScreenState createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState
    extends State<BottomNavigationBarScreen> {
  int index = 0;
  List<Widget> screens = [
    HomeScreen(),
    CategoriesScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int indexs) {
            setState(() {
              index = indexs;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/Icons-icon-home.svg",
                    color: index == 0 ? brown : black),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/cate.svg",
                    color: index == 1 ? brown : black),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                    "assets/icons/Icons-icon-shopping-bag.svg",
                    color: index == 2 ? brown : black),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/Icons-icon-bookmark.svg",
                    color: index == 3 ? brown : black),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/Icons-icon-settings.svg",
                    color: index == 4 ? brown : black),
                label: ""),
          ],
        ),
        body: screens[index]);
  }
}
