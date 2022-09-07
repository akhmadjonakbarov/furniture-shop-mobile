import 'package:flutter/widgets.dart';
import 'package:furniture_shop/models/promotion.dart';

import '../models/category.dart';

class Fake {
  static final List<Category> categories = [
    Category(
      id: UniqueKey().toString(),
      iconPath: "assets/icons/bathroom.svg",
      title: "Bathroom",
    ),
    Category(
      id: UniqueKey().toString(),
      iconPath: "assets/icons/bathroom.svg",
      title: "Bathroom",
    ),
    Category(
      id: UniqueKey().toString(),
      iconPath: "assets/icons/bathroom.svg",
      title: "Bathroom",
    ),
  ];
  static final List<Promotion> promotions = [];
}
