import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/get_videos_from_firebase.dart';
import '../../models/video_model.dart';

class VideoDetailScreen extends StatelessWidget {
  VideoDetailScreen({Key? key}) : super(key: key);

  VideoModel video = GetVideosFromFirebase()
      .getVideoById(Get.arguments['playlistId'], Get.arguments['id']);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
