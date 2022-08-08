import 'package:codeuz/models/video_model.dart';

class PlaylistModel {
  final String id;
  final String title;
  final String imageUrl;
  final String categoryId;
  final List<VideoModel> videos;

  PlaylistModel({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.categoryId,
    required this.videos,
  });
}
