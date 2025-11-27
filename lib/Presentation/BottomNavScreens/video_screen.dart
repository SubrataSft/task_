import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  bool isFollowed = false;
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: Image.asset("assets/images/male.png", fit: BoxFit.cover),
              ),
            ),

            Positioned(
              top: 30,
              right: 18,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white.withOpacity(0.3),
                ),
                child: Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),

            Positioned(
              bottom: 8,
              left: 8,
              right: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                          "assets/images/imagess.png",
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Jesscica Roy",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isFollowed = !isFollowed;
                          });
                        },
                        child: Container(
                          height: 36,
                          width: 80,
                          decoration: BoxDecoration(
                            color: isFollowed ? Colors.grey : Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: Text(
                              isFollowed ? "Followed" : "Follow",
                              style: TextStyle(
                                color: isFollowed ? Colors.white : Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.thumb_up,
                              color: isLiked ? Colors.blue : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Start Learning Vocabulary Today!",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text.rich(
                    TextSpan(
                      text:
                          "So what is the necessary to learn\n vocabulary in today world. Everyone\n is learn.....",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: " read more",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 26,
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
