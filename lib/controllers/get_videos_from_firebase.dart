import 'package:codeuz/models/playlist_model.dart';
import 'package:codeuz/models/video_model.dart';

class GetVideosFromFirebase {
  List<PlaylistModel> _list = [
    PlaylistModel(
      id: '02',
      title: 'Flutter/Dart',
      imageUrl: 'https://www.youtube.com/watch?v=GJQu0_Nr9Qc',
      categoryId: 'mobile_programming',
      videos: [
        VideoModel(
          id: '01',
          playlistId: '02',
          title: 'Flutter/Dart',
          description: 'Mobiel development Flutter Dart',
          image:
              'https://habrastorage.org/webt/62/mi/k2/62mik21owvorktgfeu43wmwwqx4.png',
          url: 'https://www.youtube.com/watch?v=GJQu0_Nr9Qc',
        ),
        VideoModel(
          id: '02',
          playlistId: '02',
          title: 'Flutter/Dart',
          description: 'Mobiel development Flutter Dart',
          image:
              'https://habrastorage.org/webt/62/mi/k2/62mik21owvorktgfeu43wmwwqx4.png',
          url: 'https://www.youtube.com/watch?v=GJQu0_Nr9Qc',
        ),
        VideoModel(
          id: '03',
          playlistId: '02',
          title: 'Flutter/Dart',
          description: 'Mobiel development Flutter Dart',
          image:
              'https://habrastorage.org/webt/62/mi/k2/62mik21owvorktgfeu43wmwwqx4.png',
          url: 'https://www.youtube.com/watch?v=GJQu0_Nr9Qc',
        ),
        VideoModel(
          id: '04',
          playlistId: '02',
          title: 'Flutter/Dart',
          description: 'Mobiel development Flutter Dart',
          image:
              'https://habrastorage.org/webt/62/mi/k2/62mik21owvorktgfeu43wmwwqx4.png',
          url: 'https://www.youtube.com/watch?v=GJQu0_Nr9Qc',
        ),
        VideoModel(
          id: '05',
          playlistId: '02',
          title: 'Flutter/Dart',
          description: 'Mobiel development Flutter Dart',
          image:
              'https://habrastorage.org/webt/62/mi/k2/62mik21owvorktgfeu43wmwwqx4.png',
          url: 'https://www.youtube.com/watch?v=GJQu0_Nr9Qc',
        ),
        VideoModel(
          id: '06',
          playlistId: '02',
          title: 'Flutter/Dart',
          description: 'Mobiel development Flutter Dart',
          image:
              'https://habrastorage.org/webt/62/mi/k2/62mik21owvorktgfeu43wmwwqx4.png',
          url: 'https://www.youtube.com/watch?v=GJQu0_Nr9Qc',
        ),
        VideoModel(
          id: '07',
          playlistId: '02',
          title:
              'Flutter/Dart Flutter/Dart Flutter/Dart Flutter/Dart Flutter/Dart Flutter/Dart Flutter/Dart Flutter/Dart Flutter/Dart Flutter/Dart Flutter/Dart',
          description: 'Mobiel development Flutter Dart',
          image:
              'https://habrastorage.org/webt/62/mi/k2/62mik21owvorktgfeu43wmwwqx4.png',
          url: 'https://www.youtube.com/watch?v=GJQu0_Nr9Qc',
        ),
      ],
    )
  ];

  List<PlaylistModel> get list {
    return [..._list];
  }

  VideoModel getVideoById(String playlistId, String id) {
    final indexPlaylist =
        _list.indexWhere((playlist) => playlist.id == playlist);
    return _list[indexPlaylist].videos.firstWhere((video) => video.id == id);
  }
}
