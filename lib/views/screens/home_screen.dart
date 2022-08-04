import 'package:codeuz/controllers/get_videos_from_firebase.dart';
import 'package:codeuz/models/video_model.dart';
import 'package:flutter/material.dart';

import '../widgets/home_blocks_title_and_button.dart';
import '../widgets/home_categories_slide_block.dart';
import '../widgets/home_slider.dart';
import '../widgets/home_videos_block.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<VideoModel> videos = GetVideosFromFirebase().list;

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeSlider(),
            HomeBlocksTitleAndButton(
              title: 'Kategoriyalar',
              buttonText: 'Barchasi',
              buttonFunction: () {},
              bottomBlock: HomeCategoriesSlideBlock(),
            ),
            HomeBlocksTitleAndButton(
              title: 'Dasturlashga oid darslar',
              buttonText: 'Barchasi',
              buttonFunction: () => print('button all'),
              bottomBlock: HomeVideosBlock(videos: videos),
            ),
            HomeBlocksTitleAndButton(
              title: 'Dizanyga oid darslar',
              buttonText: 'Barchasi',
              buttonFunction: () => print('button all'),
              bottomBlock: HomeVideosBlock(videos: videos),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
