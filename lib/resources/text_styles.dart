import 'package:flutter/material.dart';

class TextStyles {
  static const TextStyle top_timer_messages = TextStyle(
    color: Colors.green,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );

  static const TextStyle training_completed_label = TextStyle(
    color: Colors.green,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle get_some_rest = TextStyle(
    color: Colors.green,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );

  static const repeat_last_training = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static getPagesTextStyles(BuildContext context) {
    return TextStyle(color: Colors.black, fontSize: 16);
  }

  static const TextStyle circular_timer_seconds = TextStyle(
    fontSize: 33.0,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle start_training = TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
}
