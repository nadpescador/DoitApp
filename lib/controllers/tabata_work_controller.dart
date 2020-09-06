import 'package:flutter/cupertino.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:get/get.dart';

class TabataWorkController extends GetxController {
  var _workoutTimer = 25.obs;
  var _restTimer = 0.obs;
  var _repsTimer = 0.obs;

  get getWorkoutTimer => _workoutTimer.obs;
  increment() => _workoutTimer++;

  get getRestTimer => _restTimer.obs;

  get getRepsTimer => _repsTimer = 0.obs;

  Widget startCountDown(getWorkoutTimer) {
    return Countdown(
      seconds: getWorkoutTimer,
      build: (BuildContext context, double time) =>
          Text(_workoutTimer.toString()),
      interval: Duration(milliseconds: 100),
      onFinished: () {
        print("Tabata terminada!");
      },
    );
  }
}
