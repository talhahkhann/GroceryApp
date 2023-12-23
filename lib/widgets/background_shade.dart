import 'package:flutter/material.dart';

class Background_Shade extends StatelessWidget {
  const Background_Shade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: Column(children: [
          SizedBox(
            height: 200,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/images/vegi.png',
                ),
                Image.asset(
                  "assets/images/Rectangle 17.png",
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ]));
  }
}
