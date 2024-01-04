import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:grocery_app/model/product_model.dart';
import 'package:grocery_app/provider/product_provider.dart';
import 'package:grocery_app/screens/Product_Details.dart';
import 'package:provider/provider.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  void initState() {
    ProductProvider productProvider = Provider.of(context, listen: false);
    productProvider.FetchProductDataHome();
    final List<ProductModel> _photos = productProvider.getProductModelDataList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ProductProvider productProvider = Provider.of(context);
    final List<ProductModel> _photos = productProvider.getProductModelDataList;

    return Scaffold(
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: GNav(
                backgroundColor: Colors.white,
                color: Colors.black,
                tabBackgroundColor: Color.fromRGBO(135, 221, 57, 1),
                gap: 8,
                padding: EdgeInsets.all(16),
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.category_outlined,
                    text: 'Category',
                  ),
                  GButton(
                    icon: Icons.shopping_bag_outlined,
                    text: 'Shopping',
                  ),
                  GButton(
                    icon: Icons.menu_open_outlined,
                    text: 'Menu',
                  )
                ]),
          ),
        ),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: SingleChildScrollView(
          child: Column(children: [
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
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Grocery Plus",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                            ),
                            Icon(Icons.notifications_outlined),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          RawMaterialButton(
                            onPressed: () {},
                            elevation: 2.0,
                            fillColor: Color.fromRGBO(135, 221, 57, 1),
                            child: Icon(
                              Icons.location_on_outlined,
                              size: 20.0,
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(15.0),
                            shape: CircleBorder(),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 156),
                                child: Text(
                                  "Your Location",
                                  style: GoogleFonts.poppins(),
                                ),
                              ),
                              Text(
                                "32 Llanberis Close, Tonteg, CF38 1HR",
                                style: GoogleFonts.poppins(
                                    textStyle:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(240, 241, 241, 0.72),
                  hintText: "Search Anything",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: GridView(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                children: productProvider.getProductModelDataList
                    .map((getProductModelDataList) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/product_detail',
                          arguments: {'ProductImage':getProductModelDataList.ProductImage,
                                      'ProductName' : getProductModelDataList.ProductName
                          });
                    },
                    child: Card(
                      child: Container(
                        height: 290,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(10),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                    child: Image.asset(
                                        getProductModelDataList.ProductImage!)),
                                Center(
                                    child: Text(
                                        getProductModelDataList.ProductName!,
                                        style: GoogleFonts.poppins())),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 7,
                  mainAxisExtent: 150,
                ),
              ),
            )
          ]),
        ));
  }
}
