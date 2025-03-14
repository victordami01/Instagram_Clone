import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/addpost.dart';
import 'package:instagram_clone/pages/explore.dart';
import 'package:instagram_clone/pages/profile.dart';
import 'package:instagram_clone/pages/reels.dart';
import 'package:instagram_clone/pages/home.dart';
import 'package:instagram_clone/pages/splash_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int? currIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: (value) => {
                  setState(() {
                    currIndex = value;
                  })
                },
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/home.png'),
                  size: 25,
                  color: Colors.black,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/search.png'),
                  size: 25,
                  color: Colors.black,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/add.png'),
                  size: 25,
                  color: Colors.black,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/reel.png'),
                  size: 25,
                  color: Colors.black,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/user.png'),
                  size: 25,
                  color: Colors.black,
                ),
                label: '',
              ),
            ]),
        body: IndexedStack(
          index: currIndex,
          children: [
            Home(),
            Explore(),
            Addpost(),
            Reels(),
            Profile(),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
