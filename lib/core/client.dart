import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio = Dio(
    BaseOptions(baseUrl: "http://10.10.2.15:8888/api/v1"),
  );

  Future<Map<String, dynamic>> fetchMyProfile() async {
    var response = await dio.get("/auth/details/1");
    print("ma'lumot bor");
    if (response.statusCode == 200) {
      Map<String, dynamic> data = response.data;
      print("ma'lumot keldi");
      return data;
    } else {
      throw Exception("Ma'lumot yo'q");
    }
  }


  Future<List<dynamic>> fetchCategory() async {
    var response = await dio.get("/categories/list");
    if (response.statusCode == 200) {
      List<dynamic>data = response.data;
      print("Ma'lumot keldi");
      return data;
    } else {
      throw Exception("Ma'lumot yo'q");
    }
  }
}
