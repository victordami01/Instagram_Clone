import 'package:flutter/material.dart';
import 'package:instagram_clone/ig_header.dart';
import 'package:instagram_clone/post.dart';
import 'package:instagram_clone/story.dart';

class Home extends StatelessWidget {
  Home({super.key});

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
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/home.png'),
                  size: 25,
                  color: Colors.blueGrey,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/search.png'),
                  size: 25,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/add.png'),
                  size: 25,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/reel.png'),
                  size: 25,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/user.png'),
                  size: 25,
                ),
                label: '',
              ),
            ]));
  }
}
