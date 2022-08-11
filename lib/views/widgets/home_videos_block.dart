import 'package:codeuz/controllers/get_videos_from_firebase.dart';
import 'package:codeuz/models/playlist_model.dart';
import 'package:flutter/material.dart';

import '../../controllers/get_categories_from_firebase.dart';
import 'playlist_item_home_page.dart';

class HomeVideosBlock extends StatelessWidget {
  final String categoryId;
  HomeVideosBlock({
    Key? key,
    required this.categoryId,
  }) : super(key: key);
  GetCategoriesFromFirebase getCategories = GetCategoriesFromFirebase();

  @override
  Widget build(BuildContext context) {
    List<PlaylistModel> playlist =
        GetVideosFromFirebase().playlistByCategory(categoryId);
    print(playlist);
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: playlist.length > 5 ? 5 : playlist.length,
        itemBuilder: (ctx, i) {
          return PlayListItemHomePage(
            category: getCategories.getCategoryById(playlist[i].categoryId),
            playlist: playlist[i],
          );
        },
      ),
    );
  }
}
