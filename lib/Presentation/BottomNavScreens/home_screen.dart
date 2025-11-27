import 'package:flutter/material.dart';

import '../../widgets/categoris_item.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final List<String> categories = [
    "All",
    "中文",
    "English",
    "Maths",
    "Chemistry",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text("Learn Through Watching Reels"),
            actions: const [
              Icon(Icons.search_rounded),
            ],
            bottom: const TabBar(
              isScrollable: true,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              indicatorWeight: 2,
              tabs: [
                Tab(text: "Trending"),
                Tab(text: "New"),
                Tab(text: "Following"),
              ],
            ),
          ),

          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(22.0),

              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 45,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: CategoryItem(
                                  text: categories[index],
                                  isSelected: selectedIndex == index,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 268,
                                width: 189,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(22)
                                ),
                                child:Stack(
                                  children: [

                                    Positioned.fill(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(22),
                                        child: Image.asset(
                                          "assets/images/firsts.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 8,
                                      left: 8,
                                      child: Column(
                                        children: [
                                          Text(
                                            "Vocabulary 101",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(height: 12),
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 20,
                                                backgroundImage: AssetImage("assets/images/imagess.png"),
                                                backgroundColor: Colors.transparent,
                                              ),
                                              SizedBox(width: 8),
                                              Text(
                                                "Jessica Roy",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          )
                                          ,
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                height: 210,
                                width: 189,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(22)
                                ),
                                child:Stack(
                                  children: [

                                    Positioned.fill(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(22),
                                        child: Image.asset(
                                          "assets/images/second.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 8,
                                      left: 8,
                                      child: Column(
                                        children: [
                                          Text(
                                            "Vocabulary 101",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          SizedBox(height: 12),
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 20,
                                                backgroundImage: AssetImage("assets/images/imagess.png"),
                                              ),
                                              SizedBox(width: 8),
                                              Text(
                                                "Jessica Roy",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 8,),
                          Column(
                            children: [
                              Container(
                                height: 210,
                                width: 189,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(22)
                                ),
                                child:Stack(
                                  children: [

                                    Positioned.fill(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(22),
                                        child: Image.asset(
                                          "assets/images/third.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 8,
                                      left: 8,
                                      child: Column(
                                        children: [
                                          Text(
                                            "Vocabulary 101",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          SizedBox(height: 12),
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 20,
                                                backgroundImage: AssetImage("assets/images/imagess.png"),
                                              ),
                                              SizedBox(width: 8),
                                              Text(
                                                "Jessica Roy",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 12,),
                              Container(
                                height: 268,
                                width: 189,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(22)
                                ),
                                child:Stack(
                                  children: [

                                    Positioned.fill(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(22),
                                        child: Image.asset(
                                          "assets/images/four.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 8,
                                      left: 8,
                                      child: Column(
                                        children: [
                                          Text(
                                            "Vocabulary 101",
                                            style: TextStyle(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(height: 12),
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 20,
                                                backgroundImage: AssetImage("assets/images/imagess.png"),
                                                backgroundColor: Colors.transparent,
                                              ),
                                              SizedBox(width: 8),
                                              Text(
                                                "Jessica Roy",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          )
                                          ,
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ) ,
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 268,
                                width: 189,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(22)
                                ),
                                child:Stack(
                                  children: [

                                    Positioned.fill(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(22),
                                        child: Image.asset(
                                          "assets/images/firsts.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 8,
                                      left: 8,
                                      child: Column(
                                        children: [
                                          Text(
                                            "Vocabulary 101",
                                            style: TextStyle(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(height: 12),
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 20,
                                                backgroundImage: AssetImage("assets/images/imagess.png"),
                                                backgroundColor: Colors.transparent,
                                              ),
                                              SizedBox(width: 8),
                                              Text(
                                                "Jessica Roy",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          )
                                          ,
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                height: 210,
                                width: 189,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(22)
                                ),
                                child:Stack(
                                  children: [

                                    Positioned.fill(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(22),
                                        child: Image.asset(
                                          "assets/images/second.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 8,
                                      left: 8,
                                      child: Column(
                                        children: [
                                          Text(
                                            "Vocabulary 101",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          SizedBox(height: 12),
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 20,
                                                backgroundImage: AssetImage("assets/images/imagess.png"),
                                              ),
                                              SizedBox(width: 8),
                                              Text(
                                                "Jessica Roy",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 8,),
                          Column(
                            children: [
                              Container(
                                height: 210,
                                width: 189,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(22)
                                ),
                                child:Stack(
                                  children: [

                                    Positioned.fill(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(22),
                                        child: Image.asset(
                                          "assets/images/third.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 8,
                                      left: 8,
                                      child: Column(
                                        children: [
                                          Text(
                                            "Vocabulary 101",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          SizedBox(height: 12),
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 20,
                                                backgroundImage: AssetImage("assets/images/imagess.png"),
                                              ),
                                              SizedBox(width: 8),
                                              Text(
                                                "Jessica Roy",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 12,),
                              Container(
                                height: 268,
                                width: 189,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(22)
                                ),
                                child:Stack(
                                  children: [

                                    Positioned.fill(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(22),
                                        child: Image.asset(
                                          "assets/images/four.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 8,
                                      left: 8,
                                      child: Column(
                                        children: [
                                          Text(
                                            "Vocabulary 101",
                                            style: TextStyle(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(height: 12),
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 20,
                                                backgroundImage: AssetImage("assets/images/imagess.png"),
                                                backgroundColor: Colors.transparent,
                                              ),
                                              SizedBox(width: 8),
                                              Text(
                                                "Jessica Roy",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          )
                                          ,
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ) ,
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

