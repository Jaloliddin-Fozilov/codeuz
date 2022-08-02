import 'package:codeuz/models/home_slider_model.dart';

class GetHomeSliderFromFirebase {
  List<HomeSliderBanner> _list = [
    HomeSliderBanner(
      id: '01',
      title: 'Flutter/Dart',
      image:
          'https://habrastorage.org/webt/62/mi/k2/62mik21owvorktgfeu43wmwwqx4.png',
      function: () {},
    ),
    HomeSliderBanner(
      id: '02',
      title: 'Flutter/Dart',
      image:
          'https://habrastorage.org/webt/62/mi/k2/62mik21owvorktgfeu43wmwwqx4.png',
      function: () {},
    ),
    HomeSliderBanner(
      id: '03',
      title: 'Flutter/Dart',
      image:
          'https://habrastorage.org/webt/62/mi/k2/62mik21owvorktgfeu43wmwwqx4.png',
      function: () {},
    ),
    HomeSliderBanner(
      id: '04',
      title: 'Flutter/Dart',
      image:
          'https://habrastorage.org/webt/62/mi/k2/62mik21owvorktgfeu43wmwwqx4.png',
      function: () {},
    ),
  ];

  List<HomeSliderBanner> get list {
    return [..._list];
  }
}
