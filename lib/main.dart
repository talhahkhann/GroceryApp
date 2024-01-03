import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/provider/product_provider.dart';
import 'package:grocery_app/screens/Product_Details.dart';
import 'package:grocery_app/screens/category.dart';
import 'package:grocery_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProductProvider>(
      create: (context) => ProductProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => const Home_Screen(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/product_detail': (context) => Product_Details(),
        },
      ),
    );
  }
}
