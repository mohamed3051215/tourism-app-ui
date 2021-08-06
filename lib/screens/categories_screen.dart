import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourism_app/constant/colors.dart';
import 'package:tourism_app/screens/search_screen.dart';
import 'package:tourism_app/widgets/home/producst_container.dart';
import 'package:tourism_app/widgets/home/product_card.dart';

import 'filter_screen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: black,
          leading: Icon(Icons.menu, color: white),
          actions: [
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FilterScreen()));
                },
                child: SvgPicture.asset("assets/icons/Icons-Filter.svg",
                    color: white)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchScreen()));
                },
                child: Icon(
                  Icons.search,
                  color: white,
                ),
              ),
            ),
          ],
          title: Text(
            "CATEGORIES",
            style: TextStyle(
                fontFamily: "avenir-book", fontSize: 13, color: white),
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                Center(
                    child: Container(
                  width: 400,
                  child: Text("Ottoman Collection Classic Collections",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: black,
                          fontSize: 30,
                          fontFamily: "avenir-heavy")),
                )),
                SizedBox(height: 8),
                Center(
                  child: Text("Search through more than 1000+ watches",
                      style: TextStyle(
                        fontFamily: "avenir-book",
                      )),
                ),
                SizedBox(height: 34),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ProductsContainer(products: [
                    ProductCard(
                        image: "assets/images/products/thank god product.png",
                        name: "Thank God Bowl",
                        price: "€1750"),
                    ProductCard(
                        image: "assets/images/products/kavuk vase product.png",
                        name: "Kavuk Vase",
                        price: "€4250"),
                    ProductCard(
                        image: "assets/images/products/rumili case product.png",
                        name: "Rumili Kase",
                        price: "€2350"),
                  ], title: "Limited Edition"),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: ProductsContainer(
                      products: [
                        ProductCard(
                          image: "assets/images/products/hagia product.png",
                          name: "Hagia Sophia Deesis",
                          price: "€3450",
                        ),
                        ProductCard(
                            image:
                                "assets/images/products/soteria vase product.png",
                            name: "Storia vase",
                            price: "€1750"),
                        ProductCard(
                            image:
                                "assets/images/products/kavuk vase product.png",
                            name: "Kavuk Vase",
                            price: "€4250"),
                      ],
                      title: "Anatolian Civilizations Catalog",
                    )),
                SizedBox(height: 42),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ProductsContainer(products: [
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
                        image: "assets/images/products/Gulcehre_ibrik.png",
                        price: "€5650",
                        name: "Gulcehre Ibrik"),
                  ], title: 'Zevk-i Selim Catalog'),
                )
              ],
            ),
          ),
        ),
        backgroundColor: black);
  }
}
