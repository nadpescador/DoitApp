import 'package:flutter/material.dart';
import 'package:tabata/resources/text_styles.dart';

class OnBoardingText extends StatelessWidget {
  const OnBoardingText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Text(
        "Challenge your friends.",
        style: TextStyles.loginHeaders,
        textAlign: TextAlign.left,
      ),
    );
  }
}
