import 'package:akademi_ek_ders_3/models/response/categories_response.dart';
import 'package:dio/dio.dart';

class Repository {
  Future<Categories?> getCategories() async {
    try {
      var response = await Dio().get('https://www.themealdb.com/api/json/v1/1/categories.php');
      print(response);
      return Categories.fromJson(response.data);
    } catch (e) {
      print(e);
    }
  }
}
