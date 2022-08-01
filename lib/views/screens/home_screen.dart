import 'package:flutter/material.dart';

import '../widgets/home_categories_slide_block.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 244, 244, 1),
      appBar: AppBar(),
      body: HomeCategoriesSlideBlock(),
    );
  }
}
