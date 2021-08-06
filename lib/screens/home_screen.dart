import 'package:flutter/material.dart';
import 'package:tourism_app/constant/colors.dart';
import 'package:tourism_app/screens/search_screen.dart';
import 'package:tourism_app/widgets/home/producst_container.dart';
import 'package:tourism_app/widgets/home/product_card.dart';
import 'package:tourism_app/widgets/home/top_deal_product.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: black,
        leading: Icon(Icons.menu, color: white),
        actions: [
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
          "STORE",
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
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(25)),
            color: white),
        child: Padding(
          padding: EdgeInsets.all(30),
          child: ListView(
            children: [
              Text(
                "Ottoman Collection",
                style: TextStyle(fontSize: 30, color: black),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Find the perfect watch for your wrist",
                style: TextStyle(fontFamily: "avnir-book"),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ProductsContainer(
                title: "Categories",
                products: [
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
                  ProductCard(
                      image: "assets/images/products/soteria vase product.png",
                      name: "Storia vase",
                      price: "€1750"),
                ],
              ),
              SizedBox(
                height: 0,
              ),
              ProductsContainer(
                  height: 160,
                  products: [
                    TopDealWidget(
                      name: "Gulcehre Ibrik",
                      image: "assets/images/splash screen/splash screen 1.png",
                      title: "Top deals",
                      price: "€5650",
                      size: "W:32cm H:26cm",
                    ),
                    SizedBox(width: 10),
                    TopDealWidget(
                      name: "Gulcehre Ibrik",
                      image: "assets/images/splash screen/splash screen 1.png",
                      title: "Top deals",
                      price: "€5650",
                      size: "W:32cm H:26cm",
                    ),
                  ],
                  title: "Top deals"),
              SizedBox(height: 30),
              ProductsContainer(
                products: [
                  ProductCard(
                    image: "assets/images/products/hagia product.png",
                    name: "Hagia Sophia Deesis",
                    price: "€3450",
                  ),
                  ProductCard(
                      image: "assets/images/products/kavuk vase product.png",
                      name: "Kavuk Vase",
                      price: "€4250"),
                  ProductCard(
                      image: "assets/images/products/soteria vase product.png",
                      name: "Storia vase",
                      price: "€1750"),
                  ProductCard(
                      image: "assets/images/products/thank god product.png",
                      name: "Thank God Bowl",
                      price: "€1750"),
                ],
                title: "Featured products",
              ),
              ProductsContainer(
                title: "",
                products: [
                  ProductCard(
                    image: "assets/images/products/mystical vase product.png",
                    name: "Mystical Vase",
                    price: "€3150",
                  ),
                  ProductCard(
                      image:
                          "assets/images/products/my stical vase 2 product.png",
                      price: "€4850",
                      name: "Mystical Vase"),
                  ProductCard(
                      image: "assets/images/products/Gulcehre_ibrik.png",
                      price: "€5650",
                      name: "Gulcehre Ibrik"),
                ],
                isTitled: false,
              ),
              ProductsContainer(products: [
                ProductCard(
                  image: "assets/images/products/inandik vase product.png",
                  price: "€5650",
                  name: '"İnandık" Vase',
                  isPriced: true,
                ),
                ProductCard(
                  image: "assets/images/products/devr product.png",
                  price: "€4980",
                  name: '"İnandık" Vase',
                  isPriced: true,
                ),
                ProductCard(
                    image: "assets/images/products/soteria vase product.png",
                    price: '€5650',
                    name: '"Soteria" Vase')
              ], title: "Search by brand"),
              Center(
                child: Text("There Is Always More ...",
                    style: TextStyle(color: black, fontSize: 16)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
