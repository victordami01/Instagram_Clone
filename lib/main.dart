import 'package:flutter/material.dart';
import 'package:instagram_clone/bottom.dart';
import 'package:instagram_clone/pages/addpost.dart';
import 'package:instagram_clone/pages/explore.dart';
import 'package:instagram_clone/pages/profile.dart';
import 'package:instagram_clone/pages/reels.dart';
import 'package:instagram_clone/pages/home.dart';
import 'package:instagram_clone/pages/splash_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
