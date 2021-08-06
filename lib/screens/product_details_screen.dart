import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourism_app/constant/colors.dart';
import 'package:tourism_app/widgets/home/comment.dart';
import 'package:tourism_app/widgets/home/custom_shopping_bag.dart';
import 'package:tourism_app/widgets/home/product_card.dart';
import 'package:tourism_app/widgets/home/specifications_widget.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);
  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen>
    with TickerProviderStateMixin {
  late TabController _tabBarController;
  int _index = 0;
  List<Widget> _widgets = <Widget>[
    Center(
        child: Container(
      width: 299,
      child: Text(
          "The ewers were used for washing hands and face in Ottoman culture, and their different forms were used in the service of liquid drinks such as sherbet in the mansion, especially in the palace kitchen.",
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: "avenir-book")),
    )),
    Column(children: [
      SpecificationsWidget(
          leftText: "Case diameter",
          rightText: "Diameter: 20 cm Length: 40 cm"),
      SpecificationsWidget(leftText: "Product Origin ", rightText: "Turkey"),
      SpecificationsWidget(
          leftText: "Production method", rightText: "100% handmade."),
      SpecificationsWidget(
          leftText: "Material", rightText: "Gold and Glass crafting"),
      SpecificationsWidget(leftText: "Strap color", rightText: "Gold Color"),
    ]),
    Column(
      children: [
        Comment(
          comment:
              "The dial on this timepiece is extremely unique, as it is a concentric circular pattern that is covered by sturdy sapphire glass.",
          date: "23 September 2019",
          name: "Victor Flexin",
        ),
        SizedBox(height: 40),
        Comment(
          comment:
              "The dial on this timepiece is extremely unique, as it is a concentric circular pattern that is covered by sturdy sapphire glass.",
          date: "27 November 2019",
          name: "Mike Flexin",
        ),
      ],
    ),
  ];
  @override
  initState() {
    _tabBarController = _tabBarController =
        TabController(vsync: this, length: 3, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(300, 80),
        child: AppBar(
          centerTitle: true,
          title: Text("PRODUCT DETAILS",
              style: TextStyle(
                  fontFamily: "avenir-book",
                  fontSize: 15,
                  color: black,
                  fontWeight: FontWeight.w600)),
          actions: [CustomShoppingBag()],
          leading: IconButton(
              icon:
                  SvgPicture.asset("assets/icons/back arrow.svg", color: black),
              onPressed: () {
                Navigator.pop(context);
              }),
          backgroundColor: white,
          elevation: 0,
        ),
      ),
      backgroundColor: black,
      body: Column(
        children: [
          Container(
              height: 302,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/products/Gulcehre_ibrik.png",
                fit: BoxFit.cover,
              )),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  Expanded(
                      child: ListView(
                    children: [
                      SizedBox(height: 40),
                      Center(
                          child: Container(
                        width: 130,
                        child: Text("Gulcehre Ibrik",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "avenir-heavy", fontSize: 30)),
                      )),
                      SizedBox(height: 13),
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
                          SizedBox(
                            width: 8,
                          ),
                          Text("1.248 Reviews",
                              style: TextStyle(
                                  fontFamily: "avenir-book",
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      Center(
                          child: Container(
                              width: 290,
                              child: Text(
                                  "Pitchers; They are thin-necked, wide-bellied, lidded and handled containers for putting liquids such as water, sherbet. ",
                                  style: TextStyle(
                                    fontFamily: 'avenir-book',
                                    fontSize: 13,
                                  ),
                                  textAlign: TextAlign.center))),
                      SizedBox(
                        height: 12,
                      ),
                      Center(
                        child: Text("€5650",
                            style: TextStyle(
                                fontFamily: "avenir-heavy",
                                fontSize: 30,
                                color: brown)),
                      ),
                      Container(
                        height: 60,
                        child: Scaffold(
                          backgroundColor: white,
                          appBar: PreferredSize(
                            preferredSize: Size(0, 60),
                            child: AppBar(
                              backgroundColor: white,
                              elevation: 0,
                              automaticallyImplyLeading: false,
                              bottom: TabBar(
                                isScrollable: true,
                                onTap: (int index) {
                                  setState(() {
                                    _index = index;
                                  });
                                },
                                controller: _tabBarController,
                                tabs: [
                                  Container(
                                    width: 80,
                                    child: Tab(child: Text("Description")),
                                  ),
                                  Container(
                                    width: 90,
                                    child: Tab(
                                      child: Text("Specifications"),
                                    ),
                                  ),
                                  Container(
                                    width: 80,
                                    child: Tab(
                                        child: Text("Reviews",
                                            style: TextStyle())),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      _widgets[_index],
                      SizedBox(height: 27.5),
                      Row(children: [
                        Text("Similar products",
                            style: TextStyle(
                                fontFamily: "avenir-heavy", fontSize: 24))
                      ], mainAxisAlignment: MainAxisAlignment.center),
                      SizedBox(height: 27.5),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 213.5,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              ProductCard(
                                  image:
                                      "assets/images/products/mystical vase product.png",
                                  price: "€3150",
                                  name: "Mystical Vase"),
                              ProductCard(
                                  image:
                                      "assets/images/products/my stical vase 2 product.png",
                                  price: "€4850",
                                  name: "Mystical Vase"),
                              ProductCard(
                                  image:
                                      "assets/images/products/Gulcehre_ibrik.png",
                                  price: "€5650",
                                  name: "Gulcehre Ibrik"),
                            ]),
                      ),
                    ],
                  )),
                  Row(),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25, 16, 20, 30),
                      child: Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade300),
                            child: Padding(
                              padding: const EdgeInsets.all(13),
                              child: SvgPicture.asset(
                                  "assets/icons/Icons-icon-bookmark-filled.svg"),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 200,
                            height: 44,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100)))),
                                child: Text("ADD TO CART",
                                    style: TextStyle(
                                        color: white,
                                        fontFamily: "avenir-medium",
                                        fontSize: 15)),
                                onPressed: () {}),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade300),
                            child: Padding(
                              padding: const EdgeInsets.all(13),
                              child: SvgPicture.asset(
                                  "assets/icons/Icons-icon-share-filled.svg"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
