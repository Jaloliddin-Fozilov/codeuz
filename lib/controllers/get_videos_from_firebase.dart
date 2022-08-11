import 'package:codeuz/models/playlist_model.dart';
import 'package:codeuz/models/video_model.dart';

class GetVideosFromFirebase {
  List<PlaylistModel> _list = [
    PlaylistModel(
      id: '01',
      title: 'Blender 8 Kunlik tekin dars',
      imageUrl:
          'https://habrastorage.org/webt/ok/jn/h1/okjnh1d2l3uwnpuysneruptg-6w.jpeg',
      categoryId: 'design_modeling',
      videos: [
        VideoModel(
          id: '001',
          playlistId: '01',
          title: '1-CHI DARS "Jismlar jismdan iborat"',
          description:
              'BLENDER DARSLIGI / 1-CHI DARS "Jismlar jismdan iborat" / INTENSIV KURS',
          image:
              'https://habrastorage.org/webt/ok/jn/h1/okjnh1d2l3uwnpuysneruptg-6w.jpeg',
          url: 'https://www.youtube.com/watch?v=zf0QSaSt0Z4',
        ),
        VideoModel(
          id: '002',
          playlistId: '01',
          title: '2-CHI DARS "Tahminan to\'g\'ri va tahminan"',
          description:
              'BLENDER DARSLIGI  / 2-CHI DARS "Tahminan to\'g\'ri va tahminan" / INTENSIV KURS',
          image:
              'https://habrastorage.org/webt/xq/f4/7x/xqf47xd2fwmmmnm6lnuziluz8cq.jpeg',
          url: 'https://www.youtube.com/watch?v=6UeKbSkflQQ',
        ),
        VideoModel(
          id: '003',
          playlistId: '01',
          title: '3-CHI DARS "Referenslar va ularning ozligi"',
          description:
              'BLENDER DASTURI / 3-CHI DARS "Referenslar va ularning ozligi" / INTENSIV KURS',
          image:
              'https://habrastorage.org/webt/gz/6i/5n/gz6i5nuujrdheoolzigkom3rghk.jpeg',
          url: 'https://www.youtube.com/watch?v=JrkA_oUApTY',
        ),
        VideoModel(
          id: '004',
          playlistId: '01',
          title: '4-CHI DARS "MODELLING ASOSLARI " (1 QISM)',
          description:
              'BLENDER DASTURI / 4-CHI DARS "MODELLING ASOSLARI " (1 QISM) / INTENSIV KURS',
          image:
              'https://habrastorage.org/webt/ok/jn/h1/okjnh1d2l3uwnpuysneruptg-6w.jpeg',
          url: 'https://www.youtube.com/watch?v=hKdqWr8zAUE',
        ),
        VideoModel(
          id: '005',
          playlistId: '01',
          title: '4-CHI DARS "MODELLING ASOSLARI " (2 QISM)',
          description:
              'BLENDER DASTURI / 4-CHI DARS "MODELLING ASOSLARI " (2 QISM) / INTENSIV KURS',
          image:
              'https://habrastorage.org/webt/u1/8o/6f/u18o6fukgawiwcqduqq1se8pgeg.jpeg',
          url: 'https://www.youtube.com/watch?v=H2fbsdLhP38',
        ),
        VideoModel(
          id: '006',
          playlistId: '01',
          title: '5-CHI DARS "SAHNANING MODELI "',
          description:
              'BLENDER DARSLIGI / 5-CHI DARS "SAHNANING MODELI " / INTENSIV KURS',
          image:
              'https://habrastorage.org/webt/dq/bi/rz/dqbirzv4rpjmufyodrzqaq4aazy.jpeg',
          url: 'https://www.youtube.com/watch?v=XrH3j5o-G58',
        ),
        VideoModel(
          id: '007',
          playlistId: '01',
          title: '6-CHI DARS "MATERIAL"',
          description:
              'BLENDER DARSLIGI / 6-CHI DARS "MATERIAL " / INTENSIV KURS',
          image:
              'https://habrastorage.org/webt/2t/4t/94/2t4t94p3ahiendthzqh0shhgep8.jpeg',
          url: 'https://www.youtube.com/watch?v=BK6FUf6S2AQ',
        ),
        VideoModel(
          id: '007',
          playlistId: '01',
          title: '7-CHI DARS "Render va Realtime Render"',
          description:
              'BLENDER DARSLIGI / 7-CHI DARS "Render va Realtime Render " / INTENSIV KURS',
          image:
              'https://habrastorage.org/webt/yq/5d/jy/yq5djyix1dkrfvlx1buigjmftra.jpeg',
          url: 'https://www.youtube.com/watch?v=K7PyFgJLENE',
        ),
      ],
    ),
    PlaylistModel(
      id: '02',
      title: 'Flutter/Dart',
      imageUrl:
          'https://habrastorage.org/webt/62/mi/k2/62mik21owvorktgfeu43wmwwqx4.png',
      categoryId: 'mobile_programming',
      videos: [
        VideoModel(
          id: '01',
          playlistId: '02',
          title: 'Flutter/Dart',
          description:
              'Mobiel development Flutter Dart Mobiel development Flutter DartMobiel development Flutter Dart Mobiel development Flutter Dartv Mobiel development Flutter Dart',
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
    ),
  ];

  List<PlaylistModel> get list {
    return [..._list];
  }

  PlaylistModel getPlaylistById(String id) {
    return _list.firstWhere((playlist) => playlist.id == id);
  }

  List<VideoModel> getPlaylistVideoByPlaylistId(String id) {
    final indexPlaylist = _list.indexWhere((playlist) => playlist.id == id);
    return _list[indexPlaylist].videos;
  }

  VideoModel getVideoById(String playlistId, String id) {
    final indexPlaylist =
        _list.indexWhere((playlist) => playlist.id == playlistId);
    return _list[indexPlaylist].videos.firstWhere((video) => video.id == id);
  }

  List<PlaylistModel> playlistByCategory(String categoryId) {
    return _list
        .where((playlist) => playlist.categoryId == categoryId)
        .toList();
  }
}
