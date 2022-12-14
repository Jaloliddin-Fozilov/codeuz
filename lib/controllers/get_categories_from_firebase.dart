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
      http.Response response = await http.get(Uri.tryParse(
          'https://codeuz-default-rtdb.firebaseio.com/categories.json')!);
      if (response.statusCode == 200) {
        ///data successfully

        var result = jsonDecode(response.body);
        print(result);
      } else {
        ///error
      }
    } catch (e) {
      print('Error while getting data is $e');
    } finally {
      isDataLoading(false);
    }
  }

  List<CategoryModel> _list = [
    CategoryModel(
      id: 'mobile_programming',
      title: 'Mobile programming',
      short: 'Mobile',
      icon:
          'https://habrastorage.org/webt/7e/e3/me/7ee3me3dao_4izkybtdbwioo-q8.png',
    ),
    CategoryModel(
      id: 'design_modeling',
      title: 'Design modeling 3D',
      short: 'Modeling',
      icon:
          'https://habrastorage.org/webt/g7/bm/sh/g7bmshvjk0zru2lira_6twhu-es.png',
    ),
    CategoryModel(
      id: 'web_development',
      title: 'Web development',
      short: 'Web dev',
      icon:
          'https://habrastorage.org/webt/yu/th/tp/yuthtpdp3d88ieejogjj8p7jpfe.png',
    ),
    CategoryModel(
      id: 'mobile_programming',
      title: 'Mobile programming',
      short: 'Mobile',
      icon:
          'https://habrastorage.org/webt/7e/e3/me/7ee3me3dao_4izkybtdbwioo-q8.png',
    ),
    CategoryModel(
      id: 'web_development',
      title: 'Web development',
      short: 'Web dev',
      icon:
          'https://habrastorage.org/webt/yu/th/tp/yuthtpdp3d88ieejogjj8p7jpfe.png',
    ),
    CategoryModel(
      id: 'mobile_programming',
      title: 'Mobile programming',
      short: 'Mobile',
      icon:
          'https://habrastorage.org/webt/7e/e3/me/7ee3me3dao_4izkybtdbwioo-q8.png',
    ),
    CategoryModel(
      id: 'web_development',
      title: 'Web development',
      short: 'Web dev',
      icon:
          'https://habrastorage.org/webt/yu/th/tp/yuthtpdp3d88ieejogjj8p7jpfe.png',
    ),
    CategoryModel(
      id: 'mobile_programming',
      title: 'Mobile programming',
      short: 'Mobile',
      icon:
          'https://habrastorage.org/webt/7e/e3/me/7ee3me3dao_4izkybtdbwioo-q8.png',
    ),
    CategoryModel(
      id: 'web_development',
      title: 'Web development',
      short: 'Web dev',
      icon:
          'https://habrastorage.org/webt/yu/th/tp/yuthtpdp3d88ieejogjj8p7jpfe.png',
    ),
  ];

  List<CategoryModel> get list {
    return [..._list];
  }

  CategoryModel getCategoryById(String id) {
    print(id);
    return _list.firstWhere((category) => category.id == id);
  }
}
