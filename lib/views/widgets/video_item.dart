import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/category_model.dart';
import '../../models/video_model.dart';

class VideoItem extends StatelessWidget {
  VideoItem({
    Key? key,
    required this.video,
  }) : super(key: key);

  final VideoModel video;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed('/detail', arguments: {
        'playlistId': video.playlistId,
        'id': video.id,
      }),
      child: Container(
        margin: const EdgeInsets.all(16),
        child: Card(
          margin: const EdgeInsets.all(0),
          child: Row(
            children: [
              SizedBox(
                width: 110,
                height: 110,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                  ),
                  child: Image.network(
                    video.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 180,
                height: 110,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: RichText(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          strutStyle: const StrutStyle(fontSize: 18.0),
                          text: TextSpan(
                            style: const TextStyle(color: Colors.black),
                            text: video.title,
                          ),
                        ),
                      ),
                      Flexible(
                        child: RichText(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          strutStyle: const StrutStyle(fontSize: 14.0),
                          text: TextSpan(
                            style: const TextStyle(color: Colors.black),
                            text: video.description,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
