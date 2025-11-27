import 'package:flutter/material.dart';
import 'package:task/Presentation/Custom/custom_button.dart';
import 'package:task/Presentation/Screens/final_vocabulary_screen.dart';

class FinalVocabularyScreen extends StatefulWidget {
  const FinalVocabularyScreen({super.key});

  @override
  State<FinalVocabularyScreen> createState() => _FinalVocabularyScreenState();
}

class _FinalVocabularyScreenState extends State<FinalVocabularyScreen> {
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
              "Well done! Here is the Explanation",
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
              ],
            ),
            SizedBox(height: 14),
            Divider(thickness: 3, color: Colors.grey),
            SizedBox(height: 28),
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
            SizedBox(height: 28),
            Container(
              height: 437,
              width: 390,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
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
                            "Timid (膽小)",
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
                  ),
                  Positioned(
                      top: 85,
                      left: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Explanation",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                          SizedBox(height: 12,),
                          Container(
                            height: 66,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50)
                            ),child: Text("Timid的意思是缺乏勇氣或信心；容易受到驚嚇，這適合描述一隻狗在其他狗的周圍表現出的從屬或緊張的行為。"),
                          ),
                          SizedBox(height: 12,),
                          Divider(
                            thickness: 3,
                            color: Colors.white,
                          ),
                          Container(
                            height: 66,
                            width: 255,
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: Text("Scary (可怕) 和Frightening (嚇人) 表示狗會讓其他人或動物感到恐懼，這與狗對其他狗的反應不符。"),
                          ),
                          SizedBox(height: 12,),
                          Divider(
                            thickness: 3,
                            color: Colors.white,
                          ),
                          Container(
                            height: 44,
                            width: 255,
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: Text("Scary (可怕) 和Frightening (嚇人) 表示狗會讓其他人或動物感到恐懼，這與狗對其他狗的反應不符。"),
                          )

                        ],
                      ))

                ],
              ),

            ),
            SizedBox(height: 16,),
            CustomButton(text: "Confirm", onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FinalVocabularyScreen()));
            })
          ],
        ),
      ),
    );
  }
}
