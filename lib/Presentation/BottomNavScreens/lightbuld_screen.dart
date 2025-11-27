import 'package:flutter/material.dart';
import 'package:task/Presentation/Custom/custom_button.dart';
import 'package:task/Presentation/Screens/final_vocabulary_screen.dart';

class LightBuildScreen extends StatefulWidget {
  const LightBuildScreen({super.key});

  @override
  State<LightBuildScreen> createState() => _LightBuildScreenState();
}

class _LightBuildScreenState extends State<LightBuildScreen> {
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Let’s test your understanding!",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 38,
                  width: 102,
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "Vocabulary",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.watch_later_outlined),
                    SizedBox(width: 8),
                    Text("12.22s"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 14),
            Divider(thickness: 3, color: Colors.grey),
            SizedBox(height: 22),
            Column(
              children: [
                Container(
                  height: 83,
                  width: 389,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(color: Colors.grey, blurRadius: 3),
                    ],
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Q. My dog is a little __ , especially when around other dogs. ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                Container(
                  height: 56,
                  width: 389,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(color: Colors.grey, blurRadius: 3),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "scared",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Center(
                          child: Text(
                            "A",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16,),
                Container(
                  height: 56,
                  width: 389,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(color: Colors.grey, blurRadius: 3),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Frightening",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Center(
                          child: Text(
                            "B",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16,),
                Container(
                  height: 56,
                  width: 389,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.blue, width: 2),
                    boxShadow: [
                      BoxShadow(color: Colors.grey, blurRadius: 3),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Timid",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Center(
                          child: Text(
                            "C",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16,),
                Container(
                  height: 56,
                  width: 389,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(color: Colors.grey, blurRadius: 3),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Concerned",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Center(
                          child: Text(
                            "D",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 88,),
            CustomButton(text: "Next", onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FinalVocabularyScreen()));
            })
          ],
        ),
      ),
    );
  }
}
