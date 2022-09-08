// flutter packages
import 'package:flutter/widgets.dart';

// my packages
import '../models/promotion.dart';
import '../models/category.dart';

class Fake {
  static final List<Category> categories = [
    Category(
      id: UniqueKey().toString(),
      iconPath: "assets/icons/bedroom.png",
      title: "Bedroom",
    ),
    Category(
      id: UniqueKey().toString(),
      iconPath: "assets/icons/kitchen.png",
      title: "Kitchen",
    ),
    Category(
      id: UniqueKey().toString(),
      iconPath: 'assets/icons/bathroom.png',
      title: "Bathroom",
    ),
  ];
  static final List<Promotion> promotions = [
    Promotion(
      title: "All Item Furniture\nDiscount Up to",
      subtitle: "50%",
      tag: "30 April 2022",
      imagePath: "assets/images/chair_with.png",
    ),
    Promotion(
      title: "Get voucher gift",
      subtitle: "\$50",
      caption: "*for new member's\nof Furniture Shop",
    ),
  ];
  static final List trending = [
    "assets/images/t1img.jpg",
    "assets/images/t2img.jpg",
    "assets/images/t3img.jpg",
  ];
}
