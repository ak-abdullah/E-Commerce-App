import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/category.dart';

import 'categories_controller.dart';
import 'subcategories_controller.dart';
import 'products_controller.dart';

class HomePageController extends GetxController {
  final productsController = Get.put(ProductsController());
  final subCategoriesController = Get.put(SubCategoriesController());
  final categoriesController = Get.put(CategoriesController());

  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchCategories();
  }

  Future<void> fetchCategories() async {
    isLoading.value = true;
    final url = 'https://tp-flutter-test.vercel.app/v1/category';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final List data = json.decode(response.body);

        final categories = data.map((e) => Category.fromJson(e)).toList();

        productsController.setProducts(categories[0].subCategory[0].products);
        subCategoriesController.setSubCategories(categories[0].subCategory);
        categoriesController.setCategories(categories);
      } else {
        if (kDebugMode) {
          print('Failed to fetch data: ${response.statusCode}');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching data: $e');
      }
    } finally {
      isLoading.value = false;
    }
  }
}
