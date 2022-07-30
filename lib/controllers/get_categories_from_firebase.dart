import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/category_model.dart';

class GetCategoriesFromFirebase {
  CategoryModel? categoryModel;
  var isDataLoading = false.obs;
  getApi() async {
    try {
      isDataLoading(true);
      http.Response response =
          await http.get(Uri.tryParse('http://dummyapi.io/data/v1/user')!);
      if (response.statusCode == 200) {
        ///data successfully

        var result = jsonDecode(response.body);
        print(result);

        categoryModel = CategoryModel.fromJson(result);
      } else {
        ///error
      }
    } catch (e) {
      print('Error while getting data is $e');
    } finally {
      isDataLoading(false);
    }
  }
}
