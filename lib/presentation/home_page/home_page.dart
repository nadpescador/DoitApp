import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tabata/resources/dimentions.dart';
import 'package:tabata/resources/images/images.dart';
import 'package:tabata/widgets/training_historical_button.dart';
import 'package:tabata/widgets/start_training_button_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: Dimens.home_page_padding),
              child: Image.asset(
                AppImages.logo_tabata,
                scale: 3.2,
                fit: BoxFit.contain,
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: Dimens.homeButtonHeight(context),
                initialPage: 0,
                viewportFraction: 0.7,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                enlargeStrategy: CenterPageEnlargeStrategy.scale,
              ),
              items: [
                StartTrainingButtonWidget(),
                TrainingHistoricalButton(),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
