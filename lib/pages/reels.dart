import 'package:flutter/material.dart';

class Reels extends StatefulWidget {
  const Reels({super.key});

  @override
  State<Reels> createState() => _ReelsState();
}

class _ReelsState extends State<Reels> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
  // late Animation radiusAnimation;

  @override
  // void initState() {
  //   super.initState();
  //   _controller =
  //       AnimationController(vsync: this, duration: Duration(seconds: 7));
  //   _controller.forward();
  //   _controller.addListener(update);
  // }

  // void update() {
  //   setState(() {
  //     radiusAnimation =
  //         Tween<double>(begin: 0.0, end: 120.0).animate(_controller);
  //     _controller.repeat();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(8)),
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
