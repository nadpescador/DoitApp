import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tabata/presentation/on_boarding_page/widgets/on_boarding_text.dart';
import 'package:tabata/presentation/on_boarding_page/widgets/swipe_widget.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 80,
              width: double.infinity,
              color: Color.fromRGBO(70, 73, 238, 1),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height - 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Center(
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
