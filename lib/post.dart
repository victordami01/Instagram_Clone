import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  final String imagePath;
  const Post({super.key, required this.imagePath});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> with SingleTickerProviderStateMixin {
  int numOfLikes = 0;
  bool isLiked = false;

  late AnimationController _controller;

  late Animation<double> opacityVal;

  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    opacityVal = Tween<double>(begin: 1.0, end: 0.0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //name

        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.deepOrange,
              child: Text(
                'GOAT',
                style: TextStyle(
                    fontSize: 12.0,
                    fontFamily: " monospace",
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                "cristiano",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            Icon(
              Icons.verified,
              color: Color.fromARGB(255, 0, 149, 246),
              size: 16.0,
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              height: 5,
              width: 5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Following",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Icon(Icons.more_horiz),
          ],
        ),

        //picture
        SizedBox(
          height: 10,
        ),

        GestureDetector(
            onDoubleTap: () {
              setState(() {
                numOfLikes = 1;
                isLiked = true;
                _controller.forward();
              });
            },
            child: Stack(
              children: [
                Image.asset(widget.imagePath),
                isLiked
                    ? Image.asset(
                        opacity: opacityVal,
                        "assets/images/liked.gif",
                      )
                    : const SizedBox()
              ],
            )),

        //stats(likes,comment,share)
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  //like
                  isLiked
                      ? GestureDetector(
                          onTap: () => {
                            setState(() {
                              isLiked = !isLiked;
                              numOfLikes = 0;
                            })
                          },
                          child: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        )
                      : GestureDetector(
                          onTap: () => {
                            setState(() {
                              isLiked = !isLiked;
                              numOfLikes = 1;
                            })
                          },
                          child: const Icon(
                            Icons.favorite_border_outlined,
                          ),
                        ),

                  Text(
                    numOfLikes.toString(),
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),

                  const SizedBox(
                    width: 2,
                  ),

                  //comments
                  Image.asset("assets/icons/comment.png",
                      height: 50, width: 50),
                  const Text(
                    "36.9k",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 2,
                  ),

                  Image.asset("assets/icons/share.png", height: 50, width: 50),
                  const Text(
                    "19.9k",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),

                  Spacer(),
                  Image.asset(
                    "assets/icons/save.png",
                    height: 50,
                    width: 50,
                  )
                ],
              ),

              Row(
                children: [
                  Image.asset(
                    "assets/images/image.png",
                    height: 35,
                    width: 35,
                  ),
                  Text(
                    "Liked by ",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "heis_var1 ",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  Text(
                    "and ",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "14,657,063 others",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              //caption
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "cristiano",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3.0),
                    child: Icon(
                      Icons.verified,
                      color: Color.fromARGB(255, 0, 149, 246),
                      size: 14,
                    ),
                  ),
                  Text(
                    "Thank you all for the amazing birthday wishes!",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "View all 146,433 comments",
                    style: TextStyle(
                      color: Color.fromARGB(255, 119, 119, 119),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Add a comment...",
                    style: TextStyle(
                      color: Color.fromARGB(255, 119, 119, 119),
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.emoji_emotions_outlined,
                    size: 14,
                    color: Color.fromARGB(255, 119, 119, 119),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "February 5",
                    style: TextStyle(
                      color: Color.fromARGB(255, 119, 119, 119),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                ),
                child: Container(
                  width: double.infinity,
                  height: 0.2,
                  color: Color.fromARGB(255, 119, 119, 119),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
