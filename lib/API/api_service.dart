import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/Category.dart';

class ApiService {
  static const String url = 'https://tp-flutter-test.vercel.app/v1/category';

  Future<List<Category>> fetchCategories() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      // Map JSON to list of Category objects
      List<Category> categories =
          jsonData.map((json) => Category.fromJson(json)).toList();
      return categories;
    } else {
      throw Exception('Failed to load categories');
    }
  }
}
