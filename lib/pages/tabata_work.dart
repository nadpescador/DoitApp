import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabata/controllers/tabata_work_controller.dart';

class TimerApp extends StatelessWidget {
  final TabataWorkController c = Get.put(TabataWorkController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Obx(() => Text(
              "Clicks: ${c.getWorkoutTimer}\nDescanso: ${c.getRestTimer}\nRepeticiones:${c.getRepsTimer}"))),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () => {c.increment()},
            child: Icon(
              Icons.add,
            ),
          ),
          SizedBox(width: 35),
          FloatingActionButton(
              child: Icon(Icons.play_arrow),
              onPressed: () => {(c.startCountDown(c.getWorkoutTimer))})
        ],
      ),
    );
  }
}
