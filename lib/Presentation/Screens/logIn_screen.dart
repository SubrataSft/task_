import 'package:flutter/material.dart';
import 'package:task/Presentation/Screens/course_details.dart';
import 'package:task/Presentation/Custom/custom_button.dart';
import 'package:task/Presentation/Custom/custom_textfield.dart';
import 'package:task/Presentation/Screens/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 241,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Center(child: Image.asset("assets/images/learnova.png")),
            ),

            SizedBox(height: 25),

            Text(
              "Log In",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 15),

            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    isScrollable: true,
                    tabAlignment: TabAlignment.center,
                    dividerColor: Colors.blueGrey,
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: "Student"),
                      Tab(text: "Teacher"),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email"),
                  SizedBox(height: 8),
                  CustomTextField(hintText: "JohnDoe@gmail.com"),

                  SizedBox(height: 12),

                  Text("Password"),
                  SizedBox(height: 8),
                  CustomTextField(
                    hintText: "******",
                    suffixWidget: Icon(Icons.visibility_off_outlined),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),

                  SizedBox(height: 25),
                  CustomButton(text: "Log In", onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CourseDetails()));

                  },),
                  SizedBox(height: 25),
                  CustomButton(
                    text: "Login with Google",
                    textColor: Colors.black,
                    backgroundColor: Colors.white,
                    leadingImage: Image.asset(
                      "assets/images/Google.png",
                      height: 24,
                      width: 24,
                    ), onPressed: () {  },
                  ),

                  SizedBox(height: 20),

                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("New to Learnova? "),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
                          },
                          child: Text(
                            "Create an Account",
                            style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
