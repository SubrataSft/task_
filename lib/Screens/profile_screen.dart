import 'package:flutter/material.dart';
import 'package:task/custom_button.dart';
import 'package:task/final_vocabulary_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_circle_left_outlined),
        ),
        title: Text("Back"),
        actions: [Icon(Icons.settings)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 55,
                backgroundImage:AssetImage("assets/images/lady.png",) ,
              ),
            ),
            Text("Jessica Roy",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),)
          ],
        )
      ),
    );
  }
}
