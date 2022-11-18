import 'dart:convert';
import 'package:furniture_store/models/category.dart';
import 'package:http/http.dart' as http;

class CategoriesException implements Exception {
  CategoriesException(this.message);
  final String message;
}

class CategoriesApi {
  static const baseUrl =
      'https://5f210aa9daa42f001666535e.mockapi.io/api/categories';

  Future<List<Category>> fetchCategory() async {
    final url = Uri.parse(baseUrl);
    final response = await http.get(url);
    if (response.statusCode != 200) {
      throw CategoriesException('Error fetching category from server');
    }
    final data = json.decode(response.body) as List;

    if (data.isEmpty) {
      throw CategoriesException('Could not fetch categoriy from the server');
    }

    final List<Category> categories =
        data.map((category) => Category.fromJson(category)).toList();

    return categories;
  }
}
