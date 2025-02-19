import 'package:flutter/material.dart';

class IgHeader extends StatelessWidget {
  const IgHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return
        //Instagram Icon
        Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Image.asset(
            "assets/images/ig.png",
            height: 56,
            width: 120.0,
          ),
          Row(
            children: [
              Icon(
                Icons.favorite_border_outlined,
                size: 24,
              ),
              SizedBox(
                width: 14,
              ),
              // Icon(Icons.message_rounded)
              Image.asset(
                "assets/icons/message.png",
                width: 20,
                height: 20,
              ),
            ],
          )
        ]);

    // stories

    //Posts
  }
}
