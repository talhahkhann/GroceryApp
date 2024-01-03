import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/model/product_model.dart';
import 'package:grocery_app/provider/product_provider.dart';
import 'package:provider/provider.dart';

class Product_Details extends StatefulWidget {
  // String? ProductImage;
  // String? ProductName;
  // Product_Details(String ProductImage1,String ProductName2 ){
  //          this.ProductImage = ProductImage1;
  //          this.ProductName = ProductName2;
  // }

  @override
  State<Product_Details> createState() => _Product_DetailsState();
}

class _Product_DetailsState extends State<Product_Details> {
  @override
  Widget build(BuildContext context) {
    String? _productImage =
        ModalRoute.of(context)!.settings.arguments as String?;

    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: 160,
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
                    Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 50, left: 20),
                              child: Icon(Icons.arrow_back_outlined)),
                          Padding(
                            padding: EdgeInsets.only(top: 55, right: 140),
                            child: Text(
                              "Product Details",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ],
                )),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 50.0,
                vertical: 5.0,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 1.0,
              ),
              child: Card(child: Image.asset(_productImage!)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Container(
                    child: Image.asset("assets/images/dango_1.png"),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  child: Image.asset('assets/images/dango_2.png'),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 17),
              child: Text(
                "sahsgdja",
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18, top: 10),
                  child: Text(
                    "1KG",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 230),
                  child: Text(
                    "৳182",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Color.fromRGBO(135, 221, 57, 1),
                    )),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(Icons.query_builder_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Dairy Products",
                    style:
                        GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15)),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Row(
                children: [
                  Icon(Icons.query_builder_sharp),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "Et quidem faciunt, ut summum bonum sit extremum et rationibus conquisitis de voluptate. Sed ut summum bonum sit id,",
                      maxLines: 2,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontSize: 15)),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, right: 90, bottom: 40),
              child: Text(
                "You can also check this items",
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 65),
                        child: Image.asset("assets/images/Nido.png"))
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 65, left: 17, top: 5),
                      child: Container(
                        width: 200,
                        child: Column(
                          children: [
                            Text(
                              "Nestle Nido Full Cream Milk Powder Instant",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(fontSize: 16)),
                              softWrap: true,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, right: 165),
                              child: Text(
                                "৳342",
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(
                                      55,
                                      71,
                                      79,
                                      0.54,
                                    )),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 151, top: 5),
                              child: Text(
                                "৳270",
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.deepOrange),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 65),
                        child: Image.asset("assets/images/dango_nestle.png"))
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 65, left: 17, top: 5),
                      child: Container(
                        width: 200,
                        child: Column(
                          children: [
                            Text(
                              "Nestle Nido Full Cream Milk Powder Instant",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(fontSize: 16)),
                              softWrap: true,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, right: 165),
                              child: Text(
                                "৳342",
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(
                                      55,
                                      71,
                                      79,
                                      0.54,
                                    )),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 151, top: 5),
                              child: Text(
                                "৳270",
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.deepOrange),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(135, 221, 57, 1),
                      ),
                      onPressed: () {},
                      icon: Icon(Icons.shopping_bag),
                      label: Padding(
                          padding: EdgeInsets.all(18),
                          child: Text('Add to Bag',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500, fontSize: 16))),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
