import 'package:flutter/material.dart';
import './parts/header.dart';
import './parts/section.dart';
import './widgets/category_card.dart';

import '../../data/fake.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const Header(),
            Section(
              title: "Categories",
              children: Fake.categories.map((e) {
                return CategoryCard(
                  title: e.title,
                  iconPath: 'assets/icons/bathroom.png',
                  onTap: () {},
                );
              }).toList(),
            ),
            const Section(
              title: "Today's Promo",
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
