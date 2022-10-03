import 'package:flutter/material.dart';

class OnBoardingText extends StatelessWidget {
  const OnBoardingText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Text(
        "Challenge your friends.",
        style: const TextStyle(
          color: Color.fromRGBO(79, 82, 255, 1),
          fontSize: 46,
          fontFamily: '',
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
