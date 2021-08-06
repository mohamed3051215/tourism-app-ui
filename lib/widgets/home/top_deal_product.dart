import 'package:flutter/material.dart';
import 'package:tourism_app/constant/colors.dart';

class TopDealWidget extends StatelessWidget {
  final String title, name, size, price, image;

  const TopDealWidget(
      {Key? key,
      required this.title,
      required this.name,
      required this.size,
      required this.price,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
          width: 290,
          height: 160,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  tileMode: TileMode.mirror,
                  colors: [
                    Color(0xffB86518),
                    Color(0xff272833),
                    Color(0xff272833),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      child: Text(name,
                          style: TextStyle(color: white, fontSize: 20)),
                    ),
                    Text(size,
                        style:
                            TextStyle(color: white, fontFamily: "avenir-book")),
                    SizedBox(height: 15),
                    Text(price, style: TextStyle(color: white, fontSize: 24))
                  ],
                ),
              ),
            ],
          )),
      Positioned(
        top: -40,
        right: -30,
        child: Image.asset(image,
            height: 230),
      ),
    ]);
  }
}
