import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String imagePath;

  const Story({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 84, // Increased to fit gradient border
        width: 84,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: const LinearGradient(
            colors: [
              Color(0xFFfeda75), // Yellow
              Color(0xFFfa7e1e), // Orange
              Color(0xFFd62976), // Red
              Color(0xFF962fbf), // Purple
              Color(0xFF4f5bd5), // Blue
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0), // Space for border effect
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white, // Inner white ring
            ),
            padding: const EdgeInsets.all(3.0), // Inner space before image
            child: ClipOval(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: 70,
                height: 70,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
