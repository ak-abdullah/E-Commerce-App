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

  factory Product.fromJson(Map<String, dynamic> json) {
    try {
      return Product(
        id: json['id'] ?? 0,
        name: json['name'] ?? '',
        image: json['image'] ?? '',
        price: (json['price'] ?? 0).toDouble(),
        quantity: json['quantity'] ?? 0,
        discountPercentage: (json['discountPercentage'] ?? 0).toDouble(),
        status: json['status'] ?? false,
      );
    } catch (e) {
      return Product(
        id: 0,
        name: '',
        image: '',
        price: 0.0,
        quantity: 0,
        discountPercentage: 0.0,
        status: false,
      );
    }
  }
}
