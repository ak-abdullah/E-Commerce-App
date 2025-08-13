import 'package:get/get.dart';

class SubCategoriesController extends GetxController {
  final List<String> subCategories = [
    'Bags',
    'Shoes',
    'Watch',
    'Pochette',
    'Hat',
  ];
  final List<int> counts = [120, 50, 30, 15, 25];
  final List<String> images = [
    'assets/subcategories/Ellipse 8.png',
    'assets/subcategories/Ellipse 9.png',
    'assets/subcategories/Ellipse 10.png',
    'assets/subcategories/Ellipse 11.png',
    'assets/subcategories/Ellipse 8 (1).png',
  ];
  var selectedIndex = 0.obs;

  void selectSubCategory(int index) {
    selectedIndex.value = index;
  }
}
