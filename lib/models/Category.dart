import 'SubCategory.dart';

class Category {
  final int id;
  final String name;
  final List<SubCategory> subCategory;

  Category.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      name = json['name'],
      subCategory =
          (json['subCategory'] as List)
              .map((e) => SubCategory.fromJson(e))
              .toList();
}
