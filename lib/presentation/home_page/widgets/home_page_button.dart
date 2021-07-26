import 'package:flutter/material.dart';

class HomePageButton extends StatelessWidget {
  const HomePageButton({
    Key key,
    this.onPressed,
    this.color,
    this.label,
  })  : assert(label != null),
        super(key: key);

  final VoidCallback onPressed;
  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
