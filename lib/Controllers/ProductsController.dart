import 'package:e_commerce_app/models/Product.dart';
import 'package:get/get.dart';

class ProductsController extends GetxController {
  final products = <Product>[].obs;


  var selectedIndex = 0.obs;

  void selectProduct(int index) {
    selectedIndex.value = index;
  }

  void setProducts(List<Product> data) {
    products.clear();
    products.addAll(data);
  }
}
