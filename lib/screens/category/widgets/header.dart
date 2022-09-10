import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0.0, 10.0),
            blurRadius: 10.0,
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                alignment: Alignment.centerLeft,
                child: InkWell(
                  child: const Icon(Icons.arrow_back),
                  onTap: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
