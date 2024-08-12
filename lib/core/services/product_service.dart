
import 'package:apiessai/data/models/product_model.dart';
import 'package:dio/dio.dart';

class ProductService {
  final String _apiUrl = 'https://fakestoreapi.com/products';
  final Dio _dio = Dio();
  Future<List<Product>> fetchProducts() async {
    try {
      final response = await _dio.get(_apiUrl);

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => Product.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load products. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load products: $e');
    }
  }
}
