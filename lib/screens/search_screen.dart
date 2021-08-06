import 'package:flutter/material.dart';
import 'package:tourism_app/constant/colors.dart';
import 'package:tourism_app/widgets/home/custom_list_tile.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool showSuggestions = false;
  Widget getListOfTiles() {
    if (showSuggestions) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(children: [
          SizedBox(height: 10),
          CustomListTile(
            title: "The Soteria Vase bears",
            subtitle: "Most Popular",
          ),
          CustomListTile(
            title: "“Gaia’s” Box…",
            subtitle: "Recent searchesr",
          ),
          CustomListTile(
            title: "“Beykoz” Decorative Bowl - Burgondy",
            subtitle: "Recent searches",
          ),
        ]),
      );
    } else {
      return SizedBox();
    }
  }

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
              child: Icon(
                Icons.search,
                color: white,
              ),
            ),
          ),
        ],
        title: Text(
          "SEARCH",
          style:
              TextStyle(fontFamily: "avenir-book", fontSize: 13, color: white),
        ),
        centerTitle: true,
      ),
      backgroundColor: black,
      body: Container(
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: 30),
              Center(
                child: Text(
                  "Find your watch",
                  style: TextStyle(
                      color: black, fontSize: 30, fontFamily: 'avenir-heavy'),
                ),
              ),
              SizedBox(height: 10),
              Center(
                  child: Text("Search through more than 1000+ watches",
                      style: TextStyle(fontFamily: "avenir-book"))),
              SizedBox(height: 23),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search, color: black),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: black,
                      fontFamily: "avenir-book",
                      fontSize: 16,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      showSuggestions = true;
                      print("Should dhow th suggestions");
                    });
                  },
                  onEditingComplete: () {
                    setState(() {
                      showSuggestions = false;
                    });
                  },
                ),
              ),
              SizedBox(height: 10),
              getListOfTiles(),
              SizedBox(height: 900, child: Expanded(child: SizedBox()))
            ]),
          )),
    );
  }
}
