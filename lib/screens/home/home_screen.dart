import 'package:flutter/material.dart';
import 'package:furniture_shop/screens/category/category_screen.dart';
import './parts/header.dart';
import './parts/section.dart';
import './widgets/category_card.dart';
import './widgets/promo_card.dart';
import './widgets/image_card.dart';
import '../../widgets/app_bottom_navigation.dart';
import '../../data/fake.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  onCategorySelected(category) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return const CategoryScreen();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigation(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Header(),
              Section(
                title: "Categories",
                children: Fake.categories.map((c) {
                  return CategoryCard(
                    title: c.title,
                    iconPath: c.iconPath,
                    onTap: () {
                      onCategorySelected(c);
                    },
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
