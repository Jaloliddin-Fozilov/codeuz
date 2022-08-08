import 'package:codeuz/models/playlist_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/category_model.dart';
import '../../models/video_model.dart';

class PlayListItemHomePage extends StatelessWidget {
  PlayListItemHomePage({
    Key? key,
    required this.category,
    required this.playlist,
  }) : super(key: key);

  final PlaylistModel playlist;
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed('/detail', arguments: playlist.id),
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
                    playlist.imageUrl,
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
                            text: playlist.title,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          category.title!,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
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
