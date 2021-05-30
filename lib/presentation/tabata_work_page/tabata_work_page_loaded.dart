import 'package:flutter/material.dart';
import 'package:tabata/widgets/countdown_widget/counter_widget.dart';

class TabataWorkPageLoaded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
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
