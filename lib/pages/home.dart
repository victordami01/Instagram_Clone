import 'package:flutter/material.dart';
import 'package:instagram_clone/ig_header.dart';
import 'package:instagram_clone/post.dart';
import 'package:instagram_clone/story.dart';
import 'package:instagram_clone/bottom.dart';

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
                Story(),
                Story(),
                Story(),
                Story(),
                Story(),
              ],
            ),
          ),

          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
        ],
      ),
      bottomNavigationBar: Bot(),
    );
  }
}
