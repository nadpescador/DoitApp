import 'package:flutter/material.dart';

class Dimens {
  static const start_training_button_title_padding = 15.0;
  static const form_titles_padding = 18.0;

  //Home page
  static homeButtonHeight(BuildContext context) => _getScreenHeight(context) * 0.15;
  static carrouselItemHeight(BuildContext context) => _getScreenHeight(context) * 0.2;

  static homeButtonsWidth(BuildContext context) => _getScreenWidth(context) * 0.7;
  static const home_page_padding = 10.0;
  static const home_buttons_padding = 8.0;
  static const home_page_buttons_radius = 20.0;

  //Last training button
  static repeatLastTrainingWidth(BuildContext context) => _getScreenWidth(context) * 0.9;

  //Timer
  static timerWidth(BuildContext context) => _getScreenWidth(context) / 2;
  static timerHeight(BuildContext context) => _getScreenHeight(context) / 2;

  //Rive finished training animation
  static trainingFinishedAnimationHeight(BuildContext context) => _getScreenHeight(context) * 0.3;
  static trainingFinishedAnimationWidth(BuildContext context) => _getScreenWidth(context) * 0.25;
  static const animation_widget = 30.0;

  static _getScreenWidth(BuildContext context) => MediaQuery.of(context).size.width;
  static _getScreenHeight(BuildContext context) => MediaQuery.of(context).size.height;

  //Historical Training
  static const historical_training_card_padding = 8.0;
  static const historical_training_card_border_width = 0.5;
  static const historical_training_card_border_radius = 15.0;
}
