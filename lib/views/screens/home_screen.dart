import 'package:codeuz/controllers/get_home_slider_from_firebase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/home_blocks_title_and_button.dart';
import '../widgets/home_categories_slide_block.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final sliders = GetHomeSliderFromFirebase().list;

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
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: sliders.length,
              itemBuilder: (ctx, i) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: Get.width - 50,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.network(
                    sliders[i].image,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
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
