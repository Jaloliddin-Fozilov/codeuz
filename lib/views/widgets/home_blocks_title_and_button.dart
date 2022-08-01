import 'package:flutter/material.dart';

class HomeBlocksTitleAndButton extends StatelessWidget {
  final String title;
  final String buttonText;
  final Function() buttonFunction;
  final Widget bottomBlock;
  const HomeBlocksTitleAndButton({
    Key? key,
    required this.title,
    required this.buttonText,
    required this.buttonFunction,
    required this.bottomBlock,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              TextButton(
                onPressed: buttonFunction,
                child: Text(
                  buttonText,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomBlock,
      ],
    );
  }
}
