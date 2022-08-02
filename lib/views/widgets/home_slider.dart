import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../controllers/get_home_slider_from_firebase.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({Key? key}) : super(key: key);

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  final sliders = GetHomeSliderFromFirebase().list;
  int activeImageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 150.0,
            viewportFraction: 1,
            initialPage: activeImageIndex,
            onPageChanged: (index, reason) {
              setState(() {
                activeImageIndex = index;
              });
            },
          ),
          items: sliders
              .map(
                (slide) => GestureDetector(
                  onTap: () => print(slide.id),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      slide.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: sliders.map(
              (slide) {
                final imageIndex = sliders.indexOf(slide);
                return Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 5,
                  ),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: activeImageIndex == imageIndex
                        ? Colors.black
                        : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
