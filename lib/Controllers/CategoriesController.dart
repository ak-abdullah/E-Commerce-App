import 'package:get/get.dart';

import '../models/Category.dart';
import 'ProductsController.dart';
import 'SubCategoriesController.dart';

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

    print("Updated");
  }

  void setCategories(List<Category> data) {
    categories.clear();
    categories.addAll(data);
  }
}
