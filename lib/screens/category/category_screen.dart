import 'package:flutter/material.dart';
import '../../widgets/app_bottom_navigation.dart';
import './widgets/header_sliver.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigation(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: HeaderSliver(
                mixExtent: 120,
                maxExtent: 120,
              ),
              pinned: true,
              floating: true,
            )
          ],
        ),
      ),
    );
  }
}
