import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

class LogoMovementWidget extends StatelessWidget {
  const LogoMovementWidget({
    @required this.image,
    Key key,
  })  : assert(image != null),
        super(key: key);

  final Image image;

  @override
  Widget build(BuildContext context) {
    return Animator<double>(
      tween: Tween<double>(begin: 100, end: 300),
      repeats: 1,
      duration: Duration(seconds: 1),
      builder: (context, anim1, child) => Animator<double>(
        tween: Tween<double>(begin: -1, end: 1),
        cycles: 1,
        builder: (context, anim2, child) => Center(
          child: Transform.rotate(
            angle: anim2.value * 6.28,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              height: 200,
              width: anim1.value,
              child: image,
            ),
          ),
        ),
      ),
    );
  }
}
