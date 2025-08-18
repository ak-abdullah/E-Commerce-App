import 'package:get/get.dart';

import '../models/category.dart';
import 'products_controller.dart';
import 'subcategories_controller.dart';

class CategoriesController extends GetxController {
  final subCategoriesController = Get.find<SubCategoriesController>();
  final productsController = Get.find<ProductsController>();

  final List<Category> categories = [];
  var selectedIndex = 0.obs;

  void selectCategory(int index) {
    selectedIndex.value = index;
    final subCats = categories[index].subCategory;
    subCategoriesController.setSubCategories(subCats);
    if (subCats.isNotEmpty) {
      subCategoriesController.selectSubCategory(0); // select first
      productsController.setProducts(subCats[0].products);
    }
  }

  void setCategories(List<Category> data) {
    categories.clear();
    categories.addAll(data);
  }
}
