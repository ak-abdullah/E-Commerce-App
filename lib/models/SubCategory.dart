// subcategory.dart
import 'product.dart';

class SubCategory {
  final int id;
  final String name;
  final String image;
  final List<Product> products;

  SubCategory({
    required this.id,
    required this.name,
    required this.image,
    required this.products,
  });

  factory SubCategory.fromJson(Map<String, dynamic> json) {
    var productsList = <Product>[];
    if (json['products'] != null) {
      productsList = (json['products'] as List)
          .map((e) => Product.fromJson(e))
          .toList();
    }
    return SubCategory(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      products: productsList,
    );
  }

  int get totalQuantity {
    return products.fold(0, (sum, product) => sum + product.quantity);
  }
}
