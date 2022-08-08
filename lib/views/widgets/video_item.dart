import 'package:flutter/material.dart';

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
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Card(
          margin: const EdgeInsets.all(0),
          child: Row(
            children: [
              SizedBox(
                width: 100,
                height: 100,
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
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: RichText(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          strutStyle: const StrutStyle(fontSize: 18.0),
                          text: TextSpan(
                            style: const TextStyle(color: Colors.black),
                            text: video.title,
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
