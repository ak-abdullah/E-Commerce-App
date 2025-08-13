import 'package:get/get.dart';

class CategoriesController extends GetxController {
  final List<String> categories = [
    'All',
    'Clothing',
    'Accessories',
    'Hats',
    'Furniture',
    'Beauty Items',
    'Backpacks',
  ];
  final List<int> counts = [120, 50, 30, 15, 25, 40, 10];
  var selectedIndex = 0.obs;

  void selectCategory(int index) {
    selectedIndex.value = index;
  }
}
