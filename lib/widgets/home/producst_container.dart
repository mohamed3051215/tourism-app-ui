import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourism_app/constant/colors.dart';

class ProductsContainer extends StatelessWidget {
  final List<Widget> products;
  final String title;
  final double height;
  final bool isTitled;
  const ProductsContainer(
      {Key? key,
      required this.products,
      required this.title,
      this.height = 213.5,
      this.isTitled = true})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      isTitled
          ? Container(
              width: MediaQuery.of(context).size.width - 20,
              height: 40,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  width: MediaQuery.of(context).size.width - 20,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(title, style: TextStyle(fontSize: 20)),
                        Expanded(child: SizedBox()),
                        Row(
                          children: [
                            Text("See all",
                                style: TextStyle(
                                    fontFamily: "avenir-book", color: brown)),
                            SvgPicture.asset(
                              "assets/icons/icon-double-arrows.svg",
                              color: brown,
                              width: 5.67,
                            )
                          ],
                        ),
                      ]),
                ),
              ),
            )
          : SizedBox(
              height: 0,
            ),
      SizedBox(height: 10),
      Container(
        height: height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          clipBehavior: Clip.none,
          children: products,
          scrollDirection: Axis.horizontal,
        ),
      )
    ]);
  }
}
