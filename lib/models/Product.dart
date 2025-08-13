// product.dart
class Product {
  final int id;
  final String name;
  final String image;
  final double price;
  final int quantity;
  final double discountPercentage;
  final bool status;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
    required this.discountPercentage,
    required this.status,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json['id'],
    name: json['name'],
    image: json['image'],
    price: (json['price'] as num).toDouble(),
    quantity: json['quantity'],
    discountPercentage: (json['discountPercentage'] as num).toDouble(),
    status: json['status'],
  );
}
