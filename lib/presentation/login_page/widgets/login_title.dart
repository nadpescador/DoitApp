import 'package:flutter/material.dart';
import 'package:tabata/resources/text_styles.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({
    Key? key,
    required this.title,
    this.width,
  }) : super(key: key);

  final String title;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: SizedBox(
        width: width,
        child: Text(
          title,
          style: TextStyles.loginHeaders,
        ),
      ),
    );
  }
}
