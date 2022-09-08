import 'package:flutter/material.dart';
import './parts/header.dart';
import './parts/section.dart';
import './widgets/category_card.dart';
import './widgets/promo_card.dart';
import './widgets/image_card.dart';
import '../../data/fake.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Header(),
              Section(
                title: "Categories",
                children: Fake.categories.map((e) {
                  return CategoryCard(
                    title: e.title,
                    iconPath: e.iconPath,
                    onTap: () {},
                  );
                }).toList(),
              ),
              Section(
                title: "Today's Promo",
                children: Fake.promotions.map((p) {
                  return PromoCard(
                    title: p.title!,
                    subtitle: p.subtitle!,
                    tag: p.tag,
                    imagePath: p.imagePath,
                    caption: p.caption,
                  );
                }).toList(),
              ),
              Section(
                title: "Trending Furniture",
                children: Fake.trending.map((e) {
                  return ImageCard(
                    imgPath: e,
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
