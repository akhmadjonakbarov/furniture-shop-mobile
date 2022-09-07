import 'package:flutter/material.dart';
import '../widgets/cart.dart';
import '../widgets/search_bar.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 28.0,
        vertical: 16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Furiture Shop',
                style: TextStyle(fontSize: 28, height: 1),
              ),
              Cart(
                numberOfItemsInCart: 5,
              )
            ],
          ),
          const Text(
            "Get unique furniture for your home",
            style: TextStyle(
              fontSize: 15.0,
              height: 2,
              color: Colors.black38,
            ),
          ),
          const SearchBar(),
        ],
      ),
    );
  }
}
