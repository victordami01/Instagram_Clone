import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

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
        Image.asset("assets/images/goat.jpg"),
        //stats(likes,comment,share)
        Row(
          children: [
            //like
            Icon(Icons.favorite_border_outlined),
            Text(
              "5.4M",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),

            const SizedBox(
              width: 2,
            ),

            //comments
            Image.asset("assets/icons/comment.png", height: 50, width: 50),
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
        
      ],
    );
  }
}
