import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class TabataApp extends StatefulWidget {
  @override
  _TabataAppState createState() => _TabataAppState();
}

///
/// Page state
///
class _TabataAppState extends State<TabataApp> {
  final CountdownController controller = CountdownController();

  bool _isPause = true;
  bool _isRestart = false;
  double _counter = 0;

  @override
  Widget build(BuildContext context) {
    final IconData buttonIcon = _isRestart
        ? Icons.refresh
        : (_isPause ? Icons.pause : Icons.play_arrow);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tabata App",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Su rutina durara: $_counter segundos."),
            Countdown(
              controller: controller,
              seconds: _counter.toInt(),
              build: (_, _counter) => Text(
                _counter.toString(),
                style: TextStyle(
                  fontSize: 100,
                ),
              ),
              interval: Duration(milliseconds: 100),
              onFinished: () {
                print('Timer is done!');

                setState(() {
                  _isRestart = true;
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  _counter--;
                });
              }),
          SizedBox(height: 20),
          FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  _counter++;
                });
              }),
          SizedBox(height: 20),
          FloatingActionButton(
            child: Icon(buttonIcon),
            onPressed: () {
              final isCompleted = controller.isCompleted;
              isCompleted ? controller.restart() : controller.pause();

              if (!isCompleted && !_isPause) {
                controller.resume();
              }

              if (isCompleted) {
                setState(() {
                  _isRestart = false;
                });
              } else {
                setState(() {
                  _isPause = !_isPause;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
