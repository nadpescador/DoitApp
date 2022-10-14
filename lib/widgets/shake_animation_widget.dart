import 'package:flutter/material.dart';

class ShakeAnimationWidget extends StatelessWidget {
  const ShakeAnimationWidget({
    Key? key,
    required this.child,
    this.offset = 340,
    this.duration = const Duration(milliseconds: 700),
  }) : super(key: key);

  final Widget child;
  final double offset;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween(begin: 1.0, end: 0.0),
        duration: duration,
        curve: Curves.elasticOut,
        child: child,
        builder: (context, double value, child) => Transform.translate(
            offset: Offset(value * offset, 0.0), child: child));
  }
}
