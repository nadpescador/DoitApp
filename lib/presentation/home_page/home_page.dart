import 'package:flutter/material.dart';
import 'package:tabata/resources/images/images.dart';
import 'package:tabata/widgets/start_training_button_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.logo_tabata,
              scale: 3,
              fit: BoxFit.contain,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              child: StartTrainingButtonWidget(),
            ),
          ],
        ),
      ),
    ));
  }
}
