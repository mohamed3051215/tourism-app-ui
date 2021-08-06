import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Comment extends StatelessWidget {
  final String name, date, comment;

  const Comment(
      {Key? key, required this.name, required this.date, required this.comment})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              shape: BoxShape.circle),
                          child: Padding(
                              padding: EdgeInsets.all(14),
                              child: SvgPicture.asset(
                                  "assets/icons/Icons-Image.svg",
                                  color: Colors.grey.shade800))),
                      SizedBox(
                        width: 18,
                      ),
                      Column(children: [
                        Text(name,
                            style: TextStyle(
                                fontFamily: "avenir-black",
                                fontSize: 16,
                                fontWeight: FontWeight.w900)),
                        SizedBox(height: 6),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/icons/Icons-icon-star.svg',
                                color: Color(0xffCC9D76),
                                width: 14,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              SvgPicture.asset(
                                'assets/icons/Icons-icon-star.svg',
                                width: 14,
                                color: Color(0xffCC9D76),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              SvgPicture.asset(
                                'assets/icons/Icons-icon-star.svg',
                                color: Color(0xffCC9D76),
                                width: 14,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              SvgPicture.asset(
                                'assets/icons/Icons-icon-star.svg',
                                color: Color(0xffCC9D76),
                                width: 14,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              SvgPicture.asset(
                                'assets/icons/Icons-icon-star.svg',
                                color: Color(0xffCC9D76).withOpacity(0.5),
                                width: 14,
                              ),
                            ]),
                      ]),
                    ],
                  ),
                  Text(date,
                      style:
                          TextStyle(fontFamily: "avenir-book", fontSize: 12)),
                ]),
            SizedBox(
              height: 26,
            ),
            Text(comment,
                style: TextStyle(fontFamily: "avenir-book", fontSize: 14)),
            SizedBox(
              height: 26,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 110,
                  height: 36,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Helpful?",
                          style: TextStyle(fontFamily: "avenir-book")),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.grey.shade200),
                          elevation: MaterialStateProperty.all<double>(0))),
                ),
                TextButton(
                    child: Text(
                      "Report",
                      style: TextStyle(
                        fontFamily: "avenir-book",
                      ),
                    ),
                    onPressed: () {}),
              ],
            ),
            SizedBox(height: 20),
            Divider(),
          ],
        ));
  }
}
