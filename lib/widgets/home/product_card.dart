import 'package:flutter/material.dart';
import 'package:tourism_app/screens/product_details_screen.dart';

class ProductCard extends StatelessWidget {
  final String image, price, name;
  final bool isPriced;
  const ProductCard(
      {Key? key,
      required this.image,
      required this.price,
      required this.name,
      this.isPriced = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductDetailsScreen()));
      },
      child: Container(
        width: 150,
        height: 213.5,
        child: Column(children: [
          Container(
            width: 122,
            height: 130,
            child: Image.asset(image, fit: BoxFit.cover),
          ),
          SizedBox(height: 10),
          Text(name, style: TextStyle(fontFamily: "avenir-book")),
          isPriced
              ? Column(
                  children: [
                    SizedBox(height: 10),
                    Text(price, style: TextStyle(fontSize: 20))
                  ],
                )
              : SizedBox(
                  height: 0,
                ),
        ]),
      ),
    );
  }
}
