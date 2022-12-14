import 'package:codeuz/views/screens/video_detail_screen.dart';
import 'package:codeuz/views/screens/videos_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Codeuz | Dasturlash va Grafika video darslar',
      initialRoute: '/home',
      getPages: [
        GetPage(
          name: '/home',
          page: () => HomeScreen(),
        ),
        GetPage(
          name: '/videos',
          page: () => VideosScreen(),
        ),
        GetPage(
          name: '/detail',
          page: () => VideoDetailScreen(),
        ),
      ],
    );
  }
}
