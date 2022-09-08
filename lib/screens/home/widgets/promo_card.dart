import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? caption;
  final String? tag;
  final String? imagePath;

  const PromoCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.caption,
    this.tag,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: 250,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset.zero,
            blurRadius: 15.0,
          ),
        ],
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          colors: [
            Color.fromARGB(255, 9, 63, 107),
            Color.fromARGB(255, 30, 91, 119),
          ],
        ),
      ),
      child: Stack(
        children: [
          if (imagePath != null)
            Positioned(
              right: -2,
              bottom: 30,
              height: 80,
              width: 100,
              child: Image.asset(
                imagePath!,
              ),
            ),
          Wrap(
            direction: Axis.vertical,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  height: 1.5,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  height: 1.5,
                ),
              )
            ],
          ),
          Positioned(
            bottom: -2,
            child: tag != null
                ? Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 188, 205, 243)
                          .withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(tag!),
                  )
                : Text(
                    caption!,
                    style: const TextStyle(
                      fontSize: 14.0,
                      height: 1.5,
                      color: Colors.white,
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
