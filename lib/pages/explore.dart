import 'package:flutter/material.dart';
import 'package:instagram_clone/bottom.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Explore"),
      bottomNavigationBar: Bot(),
    );
  }
}
