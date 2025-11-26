import 'package:flutter/material.dart';
import 'package:task/Screens/book_screen.dart';
import 'package:task/Screens/lightbuld_screen.dart';
import 'package:task/Screens/profile_screen.dart';
import 'package:task/Screens/video_screen.dart';
import 'Screens/home_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    VideoScreen(),
    LightBuildScreen(),
    BookScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.brown,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, size: 30),
            label: "",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video, size: 30),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb, size: 30),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, size: 30),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30),
            label: "",
          ),
        ],
      ),
    );
  }
}
