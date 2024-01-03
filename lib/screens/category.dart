import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/model/product_model.dart';
import 'package:grocery_app/provider/product_provider.dart';
import 'package:provider/provider.dart';

class Category_Screen extends StatefulWidget {
  const Category_Screen({super.key});

  @override
  State<Category_Screen> createState() => _Category_ScreenState();
}

class _Category_ScreenState extends State<Category_Screen> {
  @override
  void initState() {
    ProductProvider productProvider = Provider.of(context, listen: false);
    productProvider.FetchProductDataCategory();
    final List<ProductModel> _photos = productProvider.getProductModelDataList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ProductProvider productProvider = Provider.of(context);
    final List<ProductModel> _photos = productProvider.getProductModelDataList;
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 160,
            child: Stack(fit: StackFit.expand, children: [
              Image.asset(
                'assets/images/vegi.png',
              ),
              Image.asset(
                "assets/images/Rectangle 17.png",
                fit: BoxFit.fill,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Category",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
          Center(
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
                            Expanded(
                                child:
                                    Image.asset(_photos[index].ProductImage!)),
                            Center(
                                child: Text(_photos[index].ProductName!,
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
                childAspectRatio: 3.0,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 7,
                mainAxisExtent: 150,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
