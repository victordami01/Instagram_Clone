import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'winner.oj',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Icon(Icons.keyboard_arrow_down),
          ],
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              "assets/icons/threads.png",
              width: 30,
              height: 30,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              "assets/icons/add1.png",
              width: 20,
              height: 20,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              "assets/icons/menu.png",
              width: 20,
              height: 20,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('assets/images/shoe.jpg'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.add, color: Colors.white, size: 18),
                      ),
                    ),
                    Positioned(
                      top: -20,
                      left: 9,
                      child: Container(
                        width: 70,
                        // Dynamic width
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                              20), // More rounded like the reference
                          boxShadow: [
                            BoxShadow(color: Colors.black26, blurRadius: 2)
                          ],
                        ),
                        child: Text(
                          "What's on your playlist?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500],
                          ),
                          softWrap:
                              true, // Ensures text wraps within the container
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 60),
                Column(
                  children: [
                    Text('0',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Text('Posts', style: TextStyle(fontSize: 14)),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Text('61',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Text('Followers', style: TextStyle(fontSize: 14)),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Text('81',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Text('Following', style: TextStyle(fontSize: 14)),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'NBAKING🏀🏀',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('Future MUSK'),
                Row(
                  children: [
                    Icon(Icons.link, size: 14, color: Colors.blue),
                    SizedBox(width: 4),
                    Text(
                      'discord.gg/CHbtfcAB',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.alternate_email, size: 14),
                    SizedBox(width: 4),
                    Text('winner.oj'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.grey[200], // Light grey background
                      foregroundColor: Colors.black, // Text color
                      elevation: 0, // Removes shadow
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Edit profile",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(width: 8), // Space between buttons
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[200],
                      foregroundColor: Colors.black,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Share profile",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    foregroundColor: Colors.black,
                    elevation: 0,
                    padding: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Icon(Icons.person_add, size: 18),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/icons/grid.png",
                width: 20,
                height: 20,
                color: Colors.black,
              ),
              Image.asset(
                "assets/icons/reel.png",
                width: 25,
                height: 25,
                color: Colors.grey,
              ),
              Image.asset(
                "assets/icons/tri.png",
                width: 27,
                height: 27,
                color: Colors.grey,
              ),
            ],
          ),
          Divider(),
          SizedBox(
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Capture the moment with a friend',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  'Create your first post',
                  style: TextStyle(color: Colors.blue, fontSize: 14),
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
