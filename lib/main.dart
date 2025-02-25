import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/addpost.dart';
import 'package:instagram_clone/pages/explore.dart';
import 'package:instagram_clone/pages/profile.dart';
import 'package:instagram_clone/pages/reels.dart';
import 'package:instagram_clone/pages/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/home", // Start with HomePage
      routes: {
        "/home": (context) => const Home(),
        "/explore": (context) => const Explore(),
        "/addPost": (context) => const Addpost(),
        "/reels": (context) => const Reels(),
        "/profile": (context) => const Profile(),
      },
    );
  }
}
