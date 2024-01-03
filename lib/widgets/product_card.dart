import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/model/product_data.dart';

class Product_Card extends StatelessWidget {
  final List _photos = [
    Data(image: "assets/images/fruit_pear.png", text: "Fruits & Vegetables"),
    Data(image: "assets/images/Breakfast.png", text: "Breakfast"),
    Data(image: "assets/images/Beverages.png", text: "Beverages"),
    Data(image: "assets/images/meat_fish.png", text: "Meat & Fish"),
    Data(image: "assets/images/snacks.png", text: "Snacks"),
    Data(image: "assets/images/diary.png", text: "Dairy"),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        itemCount: _photos.length,
        itemBuilder: (ctx, index) {
          return Card(
            child: Container(
              height: 290,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(child: Image.asset(_photos[index].image)),
                      Center(
                          child: Text(_photos[index].text,
                              style: GoogleFonts.poppins())),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 7,
          mainAxisExtent: 150,
        ),
      ),
    );
  }
}
