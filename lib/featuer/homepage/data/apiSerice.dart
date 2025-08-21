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
}
