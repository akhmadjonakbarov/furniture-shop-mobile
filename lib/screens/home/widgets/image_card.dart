import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String imgPath;
  const ImageCard({
    super.key,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imgPath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
