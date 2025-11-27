import 'package:flutter/material.dart';
import 'package:task/Presentation/Custom/custom_button.dart';
import 'package:task/Presentation/Custom/custom_textfield.dart';
import 'package:task/Presentation/Screens/logIn_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: Container(
                height: 241,
                width: double.infinity,
                color: Colors.blue,
                child: Image.asset(
                  "assets/images/first_Image.png",
                  fit: BoxFit.cover,
                ),
              ),
            )
            ,

            SizedBox(height: 25),

            Text(
              "Create Account",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

           

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    TabBar(
                      dividerColor: Colors.blueGrey,
                      dividerHeight: 2,
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
            ),

            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name"),
                  SizedBox(height: 8),
                  CustomTextField(hintText: "John doe"),
                  SizedBox(height: 12),
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
                  SizedBox(height: 12),
                  Text("Confirm Password"),
                  SizedBox(height: 8),
                  CustomTextField(
                    hintText: "******",
                    suffixWidget: Icon(Icons.visibility_off_outlined),
                  ),

                  SizedBox(height: 25),
                  CustomButton(text: "Create Account", onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },),
                  SizedBox(height: 25),
                  SizedBox(height: 20),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account? "),
                        InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                            },
                            child: Text("Log In", style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline,))),
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
