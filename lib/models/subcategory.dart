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
    try {
      return SubCategory(
        id: json['id'] ?? 0,
        name: json['name'] ?? '',
        image: json['image'] ?? '',
        products:
            (json['products'] as List?)
                ?.map((e) => Product.fromJson(e))
                .toList() ??
            [],
      );
    } catch (e) {
      return SubCategory(id: 0, name: '', image: '', products: []);
    }
  }
}
