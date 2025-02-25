import 'package:flutter/material.dart';
import 'package:instagram_clone/bottom.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Bot(),
    );
  }
}
