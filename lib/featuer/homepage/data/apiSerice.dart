import 'package:dio/dio.dart';

class Apiservice {
  Apiservice({required this.dio});
  final Dio dio;

  Future<List<dynamic>> getData() async {
    var respons = await dio.get("https://fakestoreapi.com/products");
    if (respons.statusCode == 200) {
      print(respons.data);
      return respons.data;
    } else {
      throw Exception('Failed to load data');
    }
  }

  // POST
  Future<Map<String, dynamic>> postData(Map<String, dynamic> data) async {
    final response = await dio.post(
      "https://fakestoreapi.com/products",
      data: data,
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.data;
    } else {
      throw Exception('Failed to post data');
    }
  }

  // PUT
  Future<Map<String, dynamic>> updateData(
    int id,
    Map<String, dynamic> data,
  ) async {
    final response = await dio.put(
      "https://fakestoreapi.com/products/$id",
      data: data,
    );
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('Failed to update data');
    }
  }

  // DELETE
  Future<void> deleteData(int id) async {
    final response = await dio.delete("https://fakestoreapi.com/products/$id");
    if (response.statusCode != 200) {
      throw Exception('Failed to delete data');
    }
  }
}
