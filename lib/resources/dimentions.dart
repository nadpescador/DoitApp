import 'package:flutter/material.dart';

class Dimens {
  static const start_training_button_title_padding = 15.0;
  static const form_titles_padding = 18.0;
  static const home_page_padding = 60.0;

  static const home_buttons_padding = 8.0;

  static const home_page_buttons_radius = 15.0;

  static _getScreenWidth(BuildContext context) => MediaQuery.of(context).size.width;

  static _getScreenHeight(BuildContext context) => MediaQuery.of(context).size.height;

  static timerWidth(BuildContext context) => _getScreenWidth(context) / 2;

  static timerHeight(BuildContext context) => _getScreenHeight(context) / 2;

  //Rive finished training animation
  static trainingFinishedAnimationHeight(BuildContext context) => _getScreenHeight(context) * 0.3;
  static trainingFinishedAnimationWidth(BuildContext context) => _getScreenWidth(context) * 0.3;
}
