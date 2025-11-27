import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_circle_left_outlined),
        title: Text("Back"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child:
        Container(
          height: 400,
          width: 390,
          decoration: BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.circular(20)
          ),
          child:
          Stack(
            children: [
              Positioned(
                top: 20,
                left: 12,
                right: 12,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                    suffixIcon: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.search, color: Colors.white),
                    ),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Positioned(
                top: 90,
                left: 20,
                child: Container(
                  height: 50,
                  width: 308,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Trigonometry",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 160,
                left: 20,
                child: Container(
                  height: 50,
                  width: 308,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Vocabulary",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 230,
                left: 20,

                child: Container(
                  height: 50,
                  width: 308,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Grammar",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 300,
                left: 20,

                child: Container(
                  height: 50,
                  width: 308,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Geography",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 12,),
            ],
          )


        ),
      ),
    );
  }
}
