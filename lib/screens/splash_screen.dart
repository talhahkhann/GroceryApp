import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
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
          SizedBox(
            height: 50,
          ),
          Image.asset("assets/images/logo.png"),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 3),
            child: Text("Grocery Plus",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontSize: 25,
                ))),
          ),
        ],
      ),
    );
  }
}
