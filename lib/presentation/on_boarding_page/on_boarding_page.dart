import 'package:flutter/material.dart';
import 'package:tabata/presentation/login_page/widgets/login_layout.dart';
import 'package:tabata/presentation/on_boarding_page/widgets/on_boarding_text.dart';
import 'package:tabata/presentation/on_boarding_page/widgets/swipe_widget.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginLayout(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          OnBoardingText(),
          Image.asset(
            'assets/images/onboarding-image.png',
            height: 338,
            width: 270,
          ),
          GestureDetector(
            onHorizontalDragUpdate: (details) => {
              if (details.delta.dx > 1)
                {
                  Navigator.of(context).pushNamed('login'),
                }
            },
            child: SwipeWidget(),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
