import 'package:codeuz/controllers/get_videos_from_firebase.dart';
import 'package:codeuz/models/playlist_model.dart';
import 'package:codeuz/models/video_model.dart';
import 'package:codeuz/views/widgets/video_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideosScreen extends StatelessWidget {
  VideosScreen({Key? key}) : super(key: key);

  PlaylistModel items =
      GetVideosFromFirebase().getPlaylistById(Get.arguments['id']);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(244, 244, 244, 1),
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          Get.arguments['title'],
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.videos.length,
        itemBuilder: (ctx, i) {
          return VideoItem(
            video: items.videos[i],
          );
        },
      ),
    );
  }
}
