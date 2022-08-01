import 'package:codeuz/controllers/get_categories_from_firebase.dart';
import 'package:get/get.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetCategoriesFromFirebase>(
      () => GetCategoriesFromFirebase(),
    );
  }
}
