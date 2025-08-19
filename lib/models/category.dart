import 'subcategory.dart';

class Category {
  final int id;
  final String name;
  final List<SubCategory> subCategory;

  Category({required this.id, required this.name, required this.subCategory});

  factory Category.fromJson(Map<String, dynamic> json) {
    try {
      return Category(
        id: json['id'] ?? 0,
        name: json['name'] ?? '',
        subCategory:
            (json['subCategory'] as List?)
                ?.map((e) => SubCategory.fromJson(e))
                .toList() ??
            [],
      );
    } catch (e) {
      return Category(id: 0, name: '', subCategory: []);
    }
  }
}
