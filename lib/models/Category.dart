// category.dart
import 'subcategory.dart';

class Category {
  final int id;
  final String name;
  final List<SubCategory> subCategory; // note exact key

  Category({
    required this.id,
    required this.name,
    required this.subCategory,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    var subcatList = <SubCategory>[];
    if (json['subCategory'] != null) {
      subcatList = (json['subCategory'] as List)
          .map((e) => SubCategory.fromJson(e))
          .toList();
    }
    return Category(
      id: json['id'],
      name: json['name'],
      subCategory: subcatList,
    );
  }

  int get totalQuantity {
    return subCategory.fold(0, (sum, subcat) => sum + subcat.totalQuantity);
  }
}
