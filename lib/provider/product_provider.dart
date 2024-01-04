import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/model/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> ProductList = [];
  List<ProductModel> ProductDetail = [];
  ProductModel? productModel;

  FetchProductDataCategory() async {
    List<ProductModel> newList = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("CategoryProduct").get();
    value.docs.forEach(
      (element) {
        print(element.data());
        productModel = ProductModel(
          ProductImage: element.get("ProductImage"),
          ProductName: element.get("ProductName"),
        );
        newList.add(productModel!);
      },
    );
    ProductList = newList;
    notifyListeners();
  }

  FetchProductDataHome() async {
    List<ProductModel> newList = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("HomeProduct").get();
    value.docs.forEach(
      (element) {
        productModel = ProductModel(
          ProductImage: element.get("ProductImage"),
          ProductName: element.get("ProductName"),
        );
        newList.add(productModel!);
      },
    );
    ProductList = newList;
    notifyListeners();
  }

  List<ProductModel> get getProductModelDataList {
    return ProductList;
  }
  
}
