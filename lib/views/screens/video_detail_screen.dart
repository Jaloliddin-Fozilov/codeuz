import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pod_player/pod_player.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  Column(
                    children: [
                      const SizedBox(height: 10),
                      const Text(
                        'Playlist',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 250,
                        child: ListView.builder(
                          itemCount: playlistVideos.length,
                          itemBuilder: (ctx, i) {
                            return ListTile(
                              dense: true,
                              enabled: video.id == playlistVideos[i].id
                                  ? false
                                  : true,
                              onTap: () {
                                Get.back();
                                Get.toNamed('/detail', arguments: {
                                  'playlistId': playlistVideos[i].playlistId,
                                  'id': playlistVideos[i].id,
                                });
                              },
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  playlistVideos[i].image,
                                ),
                              ),
                              title: Flexible(
                                child: RichText(
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  strutStyle: const StrutStyle(fontSize: 14.0),
                                  text: TextSpan(
                                    style: TextStyle(
                                      color: playlistVideos[i].id == video.id
                                          ? Colors.blue
                                          : Colors.black,
                                    ),
                                    text: playlistVideos[i].title,
                                  ),
                                ),
                              ),
                              trailing: IconButton(
                                onPressed: () {
                                  Get.back();
                                  Get.toNamed('/detail', arguments: {
                                    'playlistId': playlistVideos[i].playlistId,
                                    'id': playlistVideos[i].id,
                                  });
                                },
                                icon: Icon(
                                  Icons.play_circle,
                                  color: playlistVideos[i].id == video.id
                                      ? Colors.blue
                                      : Colors.grey,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => launchUrl(Uri.parse(video.url)),
                        child: const Text('YouTubeda ko\'rish'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
