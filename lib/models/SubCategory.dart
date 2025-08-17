import 'Product.dart';

class SubCategory {
  final int id;
  final String name;
  final String image;
  final List<Product> products;

  SubCategory.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      name = json['name'],
      image = json['image'],
      products =
          (json['products'] as List).map((e) => Product.fromJson(e)).toList();
}
