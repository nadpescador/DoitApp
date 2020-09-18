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
  double _counter = 30;
  int _reps = 3;

  @override
  Widget build(BuildContext context) {
    final IconData buttonIcon = _isRestart
        ? Icons.replay_outlined
        : (_isPause ? Icons.pause : Icons.play_arrow);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
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
              _descansoReps()
            ],
          ),
        ),
        endDrawer: _drawer(buttonIcon));
  }

  Widget _drawer(buttonIcon) {
    return Column(
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
        SizedBox(height: 20),
        FloatingActionButton(
            child: Icon(Icons.restore),
            onPressed: () {
              setState(() {
                controller.restart();
                controller.pause();
              });
            }),
        SizedBox(height: 20)
      ],
    );
  }

  Widget _descansoReps() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text("Descanso"),
            Text("15",
                style: TextStyle(fontSize: 35, color: Colors.blueAccent)),
          ],
        ),
        SizedBox(width: 50),
        Column(
          children: [
            Text("Reps"),
            FlatButton(
              onPressed: () {
                setState(() {
                  _reps++;
                });
              },
              onLongPress: () {
                setState(() {
                  _reps = 0;
                });
              },
              child: Text(
                "$_reps",
                style: TextStyle(fontSize: 35, color: Colors.redAccent),
              ),
            ),
          ],
        )
      ],
    );
  }
}
