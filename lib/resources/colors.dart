import 'package:flutter/material.dart';

class AppColors {
  static const Color _green = Colors.green;
  static const Color _bg_grey = Color.fromARGB(255, 246, 238, 238);
  static const Color _grey = Colors.grey;

  //Form
  static const Color home_page_start_training_button = _green;
  static const Color inactive_button_background = _grey;

  //Timer colors
  static Color playingTimerRing = Colors.grey[300];
  static Color playingTimerFill = Colors.green[400];
  static Color playingTimerBackground = Colors.green[500];

  static Color restingTimerRing = Colors.amber[300];
  static Color restingTimerFill = Colors.amber[100];
  static Color restingTimerBackground = Colors.amber[600];

  static const Color tabata_work_background = _bg_grey;

  static const Color home_page_training_historical_button = Colors.orange;

  //Historical Training
  static const Color historical_training_last_date = _grey;
  static const Color historical_training_border_color = _grey;
  static const Color historical_training_trailing_icon_color = _green;
}
