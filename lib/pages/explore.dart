import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  final List<String> images = [
    "assets/images/amen.jpg",
    "assets/images/card.jpg",
    "assets/images/card1.jpg",
    "assets/images/fork.jpg",
    "assets/images/fry.png",
    "assets/images/goat.jpg",
    "assets/images/pasta.jpg",
    "assets/images/perfume.jpg",
    "assets/images/sandwich.jpg",
    "assets/images/pasta.jpg",
    "assets/images/perfume.jpg",
    "assets/images/sandwich.jpg",
    "assets/images/card.jpg",
    "assets/images/card1.jpg",
    "assets/images/fork.jpg",
  ];

  Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding:
                const EdgeInsets.only(top: 4, left: 10, right: 4, bottom: 10),
            child: Container(
              width: 480,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(7),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.grey[600], fontSize: 16),
                  prefixIcon:
                      Icon(Icons.search, color: Colors.grey[600], size: 24),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 14),
                ),
              ),
            ),
          ),  

          // Image Grid with Instagram's Layout
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: GridView.builder(
                itemCount: images.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 2.0,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.grey[300], // Placeholder before images load
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
