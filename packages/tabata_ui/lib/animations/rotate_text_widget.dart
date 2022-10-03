import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class RotateTextWidget extends StatelessWidget {
  const RotateTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
          child: AnimatedTextKit(
            displayFullTextOnTap: true,
            repeatForever: true,
            animatedTexts: [
              RotateAnimatedText('ENTRENÁ', duration: Duration(seconds: 2)),
              RotateAnimatedText(
                'MEJORÁ',
                duration: Duration(seconds: 3),
              ),
              RotateAnimatedText(
                'CONTROLATE',
                duration: Duration(seconds: 3),
              ),
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
        ),
      ),
    );
  }
}
