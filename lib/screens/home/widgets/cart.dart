import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Cart extends StatelessWidget {
  final int numberOfItemsInCart;
  const Cart({super.key, required this.numberOfItemsInCart});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: const BoxDecoration(),
          child: SvgPicture.asset(
            'assets/icons/cart.svg',
          ),
        ),
        if (numberOfItemsInCart > 0)
          Positioned(
            top: -4,
            right: -4,
            child: Container(
              width: 12,
              height: 12,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
              ),
              child: Text(
                numberOfItemsInCart.toString(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
      ],
    );
  }
}
