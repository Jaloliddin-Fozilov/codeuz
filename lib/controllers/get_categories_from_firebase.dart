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
      children: [
        {
          'id': 'flutter_id',
          'title': 'Flutter/Dart',
        },
      ],
    ),
    CategoryModel(
      id: 'web_development',
      title: 'Web development',
      short: 'Web dev',
      icon:
          'https://habrastorage.org/webt/yu/th/tp/yuthtpdp3d88ieejogjj8p7jpfe.png',
      children: [
        {
          'id': 'html',
          'title': 'HTML',
        },
      ],
    ),
    CategoryModel(
      id: 'mobile_programming',
      title: 'Mobile programming',
      short: 'Mobile',
      icon:
          'https://habrastorage.org/webt/7e/e3/me/7ee3me3dao_4izkybtdbwioo-q8.png',
      children: [
        {
          'id': 'flutter_id',
          'title': 'Flutter/Dart',
        },
      ],
    ),
    CategoryModel(
      id: 'web_development',
      title: 'Web development',
      short: 'Web dev',
      icon:
          'https://habrastorage.org/webt/yu/th/tp/yuthtpdp3d88ieejogjj8p7jpfe.png',
      children: [
        {
          'id': 'html',
          'title': 'HTML',
        },
      ],
    ),
    CategoryModel(
      id: 'mobile_programming',
      title: 'Mobile programming',
      short: 'Mobile',
      icon:
          'https://habrastorage.org/webt/7e/e3/me/7ee3me3dao_4izkybtdbwioo-q8.png',
      children: [
        {
          'id': 'flutter_id',
          'title': 'Flutter/Dart',
        },
      ],
    ),
    CategoryModel(
      id: 'web_development',
      title: 'Web development',
      short: 'Web dev',
      icon:
          'https://habrastorage.org/webt/yu/th/tp/yuthtpdp3d88ieejogjj8p7jpfe.png',
      children: [
        {
          'id': 'html',
          'title': 'HTML',
        },
      ],
    ),
    CategoryModel(
      id: 'mobile_programming',
      title: 'Mobile programming',
      short: 'Mobile',
      icon:
          'https://habrastorage.org/webt/7e/e3/me/7ee3me3dao_4izkybtdbwioo-q8.png',
      children: [
        {
          'id': 'flutter_id',
          'title': 'Flutter/Dart',
        },
      ],
    ),
    CategoryModel(
      id: 'web_development',
      title: 'Web development',
      short: 'Web dev',
      icon:
          'https://habrastorage.org/webt/yu/th/tp/yuthtpdp3d88ieejogjj8p7jpfe.png',
      children: [
        {
          'id': 'html',
          'title': 'HTML',
        },
      ],
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
