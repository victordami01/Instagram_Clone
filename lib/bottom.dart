import 'package:flutter/material.dart';

class Bot extends StatelessWidget {
  const Bot({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
