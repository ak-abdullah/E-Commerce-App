import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/Category.dart';
import 'CategoriesController.dart';
import 'SubCategoriesController.dart';
import 'ProductsController.dart';

class HomepageController extends GetxController {
  final productsController = Get.put(ProductsController());
  final subCategoriesController = Get.put(SubCategoriesController());
  final categoriesController = Get.put(CategoriesController());




  var isLoading = true.obs; // <-- reactive loading flag

  @override
  void onInit() {
    super.onInit();
    fetchCategories();
  }

  Future<void> fetchCategories() async {
    isLoading.value = true; // start loading
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
        print('Failed to fetch data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching data: $e');
    } finally {
      isLoading.value = false; // stop loading
    }
  }
}
