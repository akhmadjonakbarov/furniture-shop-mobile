import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 24.0,
        bottom: 28.0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(
              0.075,
            ),
            offset: const Offset(0.0, 1.0),
            blurRadius: 10.0,
          )
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "Search unique furniture...",
            hintStyle: const TextStyle(
              color: Colors.black26,
              fontSize: 14,
            ),
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              width: 20,
              height: 20,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
