import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const Section({super.key, required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  height: 1,
                ),
              ),
              InkWell(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      "View all",
                      style: TextStyle(
                          fontSize: 18,
                          height: 1,
                          color: Theme.of(context).primaryColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Theme.of(context).primaryColor,
                      ),
                    )
                  ],
                ),
                onTap: () {},
              )
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(28),
              child: Wrap(
                spacing: 28,
                children: children,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
