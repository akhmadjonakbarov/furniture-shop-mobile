import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String iconPath;
  final Function() onTap;
  const CategoryCard({
    super.key,
    required this.title,
    required this.iconPath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 90,
        width: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset.zero,
                blurRadius: 15.0),
          ],
        ),
        child: Center(
          child: Wrap(
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(),
                child: Image.asset(
                  iconPath,
                  width: 42,
                  height: 42,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16.0,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
