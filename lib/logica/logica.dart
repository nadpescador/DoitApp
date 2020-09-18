import 'package:flutter/material.dart';

Widget logic(_reps, _counter, controller, setState) {
  while (_reps != 0) {
    if (_counter == 0) {
      setState(() {
        _reps--;
        controller.restart();
      });
      break;
    }
  }
}
