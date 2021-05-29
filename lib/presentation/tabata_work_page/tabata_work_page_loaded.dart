import 'package:flutter/material.dart';
import 'package:tabata/widgets/countdown_widget/counter_widget.dart';

class TabataWorkPageLoaded extends StatelessWidget {
  TabataWorkPageLoaded({
    @required this.workoutTime,
    @required this.restingTime,
    @required this.workoutRounds,
  });

  final int workoutRounds;
  final int restingTime;
  final int workoutTime;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CounterWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
