import 'package:flutter/material.dart';

import '../widgets/home_blocks_title_and_button.dart';
import '../widgets/home_categories_slide_block.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(244, 244, 244, 1),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.mail_outlined,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Featured courses',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromRGBO(244, 244, 244, 1),
      body: Column(
        children: [
          HomeBlocksTitleAndButton(
            title: 'Categories',
            buttonText: 'See all',
            buttonFunction: () {},
            bottomBlock: HomeCategoriesSlideBlock(),
          ),
        ],
      ),
    );
  }
}
