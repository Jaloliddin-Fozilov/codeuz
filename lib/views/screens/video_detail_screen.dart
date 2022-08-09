import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pod_player/pod_player.dart';

import '../../controllers/get_videos_from_firebase.dart';
import '../../models/video_model.dart';

class VideoDetailScreen extends StatefulWidget {
  VideoDetailScreen({Key? key}) : super(key: key);

  @override
  State<VideoDetailScreen> createState() => _VideoDetailScreenState();
}

class _VideoDetailScreenState extends State<VideoDetailScreen> {
  VideoModel video = GetVideosFromFirebase()
      .getVideoById(Get.arguments['playlistId'], Get.arguments['id']);

  List<VideoModel> playlistVideos = GetVideosFromFirebase()
      .getPlaylistVideoByPlaylistId(Get.arguments['playlistId']);

  late final PodPlayerController controller;

  @override
  void initState() {
    controller = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(
        video.url,
      ),
    )..initialise();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            PodVideoPlayer(
              controller: controller,
              podProgressBarConfig: const PodProgressBarConfig(
                playingBarColor: Colors.blue,
                circleHandlerColor: Colors.blue,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    video.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    video.description,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: ListView.builder(
                      itemCount: playlistVideos.length,
                      itemBuilder: (ctx, i) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                NetworkImage(playlistVideos[i].image),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
