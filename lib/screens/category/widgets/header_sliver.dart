import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'header.dart';

class HeaderSliver implements SliverPersistentHeaderDelegate {
  final double? mixExtent;
  final double maxExtent;
  HeaderSliver({this.mixExtent, required this.maxExtent});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Header();
  }

  @override
  double get minExtent => throw UnimplementedError();

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  PersistentHeaderShowOnScreenConfiguration? get showOnScreenConfiguration =>
      null;

  @override
  FloatingHeaderSnapConfiguration? get snapConfiguration => null;

  @override
  OverScrollHeaderStretchConfiguration? get stretchConfiguration => null;

  @override
  TickerProvider? get vsync => null;
}
