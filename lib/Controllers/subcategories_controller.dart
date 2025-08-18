import 'package:e_commerce_app/models/subcategory.dart';
import 'package:get/get.dart';

import 'products_controller.dart';

class SubCategoriesController extends GetxController {
  var subCategories = <SubCategory>[].obs;
  final productsController = Get.find<ProductsController>();

  var selectedIndex = 0.obs;

  void selectSubCategory(int index) {
    selectedIndex.value = index;
    productsController.setProducts(subCategories[index].products);
  }

  void setSubCategories(List<SubCategory> data) {
    subCategories.clear();
    subCategories.addAll(data);
  }
}
