import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourism_app/constant/colors.dart';
import 'package:tourism_app/widgets/auth/submit_button.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int _index = 4;
  int _index2 = 4;
  RangeValues values = RangeValues(850, 4850);
  Color? getColor(int index) {
    return _index == index ? brown : Colors.grey.shade200;
  }

  Color? getAnotherColor(int index) {
    return index == _index2 ? brown : Colors.grey.shade200;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: black,
        leading: Icon(Icons.menu, color: white),
        actions: [
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SvgPicture.asset("assets/icons/Combined Shape-5.svg",
                    color: white),
              )),
        ],
        title: Text(
          "filter & Sort",
          style:
              TextStyle(fontFamily: "avenir-book", fontSize: 13, color: white),
        ),
        centerTitle: true,
      ),
      backgroundColor: black,
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 39),
                  Row(
                    children: [
                      SizedBox(width: 30),
                      Text("Select categories",
                          style: TextStyle(
                              fontSize: 20, fontFamily: "avenir-heavy")),
                    ],
                  ),
                  SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Wrap(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _index = 0;
                            });
                          },
                          child: Chip(
                            label: Text("All Watches"),
                            backgroundColor: getColor(0),
                          ),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _index = 1;
                            });
                          },
                          child: Chip(
                            label: Text("COLLECTIONS"),
                            backgroundColor: getColor(1),
                          ),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _index = 2;
                            });
                          },
                          child: Chip(
                            label: Text("Boutique"),
                            backgroundColor: getColor(2),
                          ),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _index = 3;
                            });
                          },
                          child: Chip(
                            label: Text("Limited"),
                            backgroundColor: getColor(3),
                          ),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _index = 4;
                            });
                          },
                          child: Chip(
                            label: Text("Expensive"),
                            backgroundColor: getColor(4),
                          ),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _index = 5;
                            });
                          },
                          child: Chip(
                            label: Text("Classical"),
                            backgroundColor: getColor(5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      SizedBox(width: 30),
                      Text("Sort watches by",
                          style: TextStyle(
                              fontSize: 20, fontFamily: "avenir-heavy")),
                    ],
                  ),
                  SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Wrap(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _index2 = 0;
                            });
                          },
                          child: Chip(
                            label: Text("Price"),
                            backgroundColor: getAnotherColor(0),
                          ),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _index2 = 1;
                            });
                          },
                          child: Chip(
                            label: Text("Boutique"),
                            backgroundColor: getAnotherColor(1),
                          ),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _index2 = 2;
                            });
                          },
                          child: Chip(
                            label: Text("Popularity"),
                            backgroundColor: getAnotherColor(2),
                          ),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _index2 = 3;
                            });
                          },
                          child: Chip(
                            label: Text("Soteria"),
                            backgroundColor: getAnotherColor(3),
                          ),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _index2 = 4;
                            });
                          },
                          child: Chip(
                            label: Text("Vase"),
                            backgroundColor: getAnotherColor(4),
                          ),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _index2 = 5;
                            });
                          },
                          child: Chip(
                            label: Text("Top Selling"),
                            backgroundColor: getAnotherColor(5),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _index2 = 6;
                            });
                          },
                          child: Chip(
                            label: Text("Rating"),
                            backgroundColor: getAnotherColor(6),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _index2 = 7;
                            });
                          },
                          child: Chip(
                            label: Text("Archeological"),
                            backgroundColor: getAnotherColor(7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      SizedBox(width: 30),
                      Text("Sort watches by",
                          style: TextStyle(
                              fontSize: 20, fontFamily: "avenir-heavy")),
                    ],
                  ),
                  SizedBox(height: 62),
                  RangeSlider(
                      values: values,
                      onChanged: (value) {
                        setState(() {
                          values = value;
                        });
                      },
                      divisions: 100,
                      labels: RangeLabels("€${values.start}", "€${values.end}"),
                      min: 0,
                      max: 10000)
                ])),
              ),
              SizedBox(
                height: 40,
              ),
              SingleChildScrollView(
                child: Column(children: [
                  SubmitButton(title: "APPLY", func: () {}),
                  SizedBox(height: 16),
                  Container(
                    width: 240,
                    height: 44,
                    child: ElevatedButton(
                        child: Text("CLEAR FILTERS",
                            style: TextStyle(
                                color: black,
                                fontFamily: "avenir-book",
                                fontSize: 15,
                                letterSpacing: 2)),
                        onPressed: () {},
                        style: ButtonStyle(
                            elevation: MaterialStateProperty.all<double>(0),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(300))),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.grey.shade300))),
                  ),
                  SizedBox(height: 30)
                ]),
              )
            ],
          )),
    );
  }
}