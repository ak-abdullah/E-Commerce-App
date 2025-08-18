class Product {
  final int id;
  final String name;
  final String image;
  final double price;
  final int quantity;
  final double discountPercentage;
  final bool status;

  Product.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      name = json['name'],
      image = json['image'],
      price = json['price'].toDouble(),
      quantity = json['quantity'],
      discountPercentage = json['discountPercentage'].toDouble(),
      status = json['status'];
}
