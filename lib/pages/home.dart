import 'package:flutter/material.dart';
import 'package:instagram_clone/ig_header.dart';
import 'package:instagram_clone/post.dart';
import 'package:instagram_clone/story.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 1.0),
        children: [
          //header
          IgHeader(),
          //stories
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Story(
                  imagePath: "assets/images/shoe.jpg",
                ),
                Story(
                  imagePath: "assets/images/card.jpg",
                ),
                Story(
                  imagePath: "assets/images/card1.jpg",
                ),
                Story(
                  imagePath: "assets/images/perfume.jpg",
                ),
                Story(
                  imagePath: "assets/images/sandwich.jpg",
                ),
                Story(
                  imagePath: "assets/images/perfume.jpg",
                ),
                Story(
                  imagePath: "assets/images/vase.png",
                ),
              ],
            ),
          ),

          // Expanded(
          //     child: ListView.builder(
          //   shrinkWrap: true,
          //   itemCount: 20,
          //   itemBuilder: (context, index) => const Post(),
          // ))

          Post(imagePath: "assets/images/shoe.jpg"),
          Post(imagePath: "assets/images/sandwich.jpg"),
          Post(imagePath: "assets/images/fry.png"),
          Post(imagePath: "assets/images/pasta.jpg"),
        ],
      ),
    );
  }
}
