import 'package:flutter/material.dart';

import '../../controllers/get_categories_from_firebase.dart';
import '../../models/video_model.dart';
import 'video_item.dart';

class HomeVideosBlock extends StatelessWidget {
  final List<VideoModel> videos;
  HomeVideosBlock({
    Key? key,
    required this.videos,
  }) : super(key: key);
  GetCategoriesFromFirebase getCategories = GetCategoriesFromFirebase();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: videos.length > 5 ? 5 : videos.length,
        itemBuilder: (ctx, i) {
          return VideoItem(
              category: getCategories.getCategoryById(videos[i].categoryId),
              video: videos[i]);
        },
      ),
    );
  }
}
