import 'package:flutter/material.dart';

class Bot extends StatelessWidget {
  const Bot({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (value) {
          // List of routes that we want to navigate to when an item is tapped
          const routes = [
            "/home",
            "/explore",
            "/addPost",
            "/reels",
            "/profile"
          ];
          Navigator.pushReplacementNamed(
              context, routes[value]); // Replace current route
        },
        type: BottomNavigationBarType.fixed,
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
        ]);
  }
}
