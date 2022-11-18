import 'dart:convert';

import 'package:furniture_store/models/product.dart';
import 'package:http/http.dart' as http;

class ProductsException implements Exception {
  ProductsException(this.message);
  final String message;
}

class ProductsApi {
  static const baseUrl =
      'https://5f210aa9daa42f001666535e.mockapi.io/api/products';

  Future<List<Product>> fetchProducts() async {
    final url = Uri.parse(baseUrl);
    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw ProductsException('Error fetching products from server');
    }
    final data = json.decode(response.body) as List;

    if (data.isEmpty) {
      throw ProductsException('Could not fetch products from the server');
    }

    final List<Product> products =
        data.map((product) => Product.fromJson(product)).toList();
    return products;
  }
}
