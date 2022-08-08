import 'package:codeuz/models/playlist_model.dart';
import 'package:flutter/material.dart';

import '../../controllers/get_categories_from_firebase.dart';
import 'playlist_item_home_page.dart';

class HomeVideosBlock extends StatelessWidget {
  final List<PlaylistModel> playlist;
  HomeVideosBlock({
    Key? key,
    required this.playlist,
  }) : super(key: key);
  GetCategoriesFromFirebase getCategories = GetCategoriesFromFirebase();
  @override
  Widget build(BuildContext context) {
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
