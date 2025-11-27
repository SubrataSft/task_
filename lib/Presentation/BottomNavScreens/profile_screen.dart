import 'package:flutter/material.dart';

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
              child: ClipOval(
                child: Image.asset(
                  "assets/images/lady.png",
                  width: 110,
                  height: 110,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Text(
              "Jessica Roy",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            Text(
              "Joined since - Jun 2024",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
            ),
            SizedBox(height: 18),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "05",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "In Progress",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                  ),

                  Container(height: 40, width: 1, color: Colors.grey.shade300),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "01",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Completed",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Container(height: 40, width: 1, color: Colors.grey.shade300),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "50",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Following",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Courses",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),

                SizedBox(height: 15),

                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 1,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "English Tenses",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "32 minutes ago",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Level ",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: " -  Intermediate",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 8),

                        Row(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                "assets/images/lady.png",
                                width: 55,
                                height: 55,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              "Denisa Ozel",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 40,
                                width: 164,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                  child: Text(
                                    "Get Back To It",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 40,
                                width: 164,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                  child: Text(
                                    "Get Back To It",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 1,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "English Tenses",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "32 minutes ago",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Level ",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: " -  Intermediate",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 8),

                        Row(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                "assets/images/lady.png",
                                width: 55,
                                height: 55,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              "Denisa Ozel",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 40,
                                width: 164,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                  child: Text(
                                    "Get Back To It",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 40,
                                width: 164,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                  child: Text(
                                    "Get Back To It",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
