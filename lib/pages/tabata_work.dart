import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:audioplayer/audioplayer.dart';

class TabataApp extends StatefulWidget {
  @override
  _TabataAppState createState() => _TabataAppState();
}

class _TabataAppState extends State<TabataApp> {
  final CountdownController controller = CountdownController();
  final CountdownController controllerDescanso = CountdownController();

  bool _isPause = true;
  bool _isRestart = false;
  int _reps = 3;
  double _counter = 30;
  double _rest = 15;

  @override
  Widget build(BuildContext context) {
    final IconData buttonIcon = _isRestart
        ? Icons.replay_outlined
        : (_isPause ? Icons.pause : Icons.play_arrow);

    AudioPlayer audioPlugin = AudioPlayer();

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
                  audioPlugin.play(
                      "https://dm0qx8t0i9gc9.cloudfront.net/previews/audio/BsTwCwBHBjzwub4i4/audioblocks-happy-pop-ding-success_SY4-7pZIRPU_NWM.mp3");

                  setState(() {
                    if (_reps >= 1) {
                      controller.restart();
                      _reps--;
                    } else {
                      _isRestart = false;
                    }
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
            tooltip: "Añade tiempo de ejercitacion",
            onPressed: () {
              setState(() {
                _counter--;
              });
            }),
        SizedBox(height: 20),
        FloatingActionButton(
            child: Icon(Icons.add),
            tooltip: "Elimina tiempo de ejercitacion",
            onPressed: () {
              setState(() {
                _counter++;
              });
            }),
        SizedBox(height: 20),
        FloatingActionButton(
          child: Icon(buttonIcon),
          tooltip: "Pone Pausa y Play a la rutina",
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
            tooltip: "Restaura el tiempo desde los valores que indico.",
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
            FlatButton(
              onPressed: () {
                setState(() {
                  _rest++;
                });
              },
              onLongPress: () {
                setState(() {
                  _rest = 0;
                });
              },
              child: Text(
                "$_rest",
                style: TextStyle(fontSize: 35, color: Colors.blue),
              ),
            ),
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
