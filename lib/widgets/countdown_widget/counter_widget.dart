import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:tabata/presentation/navigation_page/navigation_page.dart';
import 'package:tabata/presentation/tabata_work_page/bloc/tabata_page_cubit.dart';
import 'package:tabata/presentation/tabata_work_page/bloc/tabata_page_state.dart';

class CounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<TabataPageCubit, TabataPageState>(
          builder: (context, state) {
            return state.when(
              playing: (workTime, restTime, repetitions) => Column(
                children: [
                  Text('¡TU PUEDES! TE QUEDAN $repetitions RONDAS'),
                  Container(
                    child: CircularCountDownTimer(
                      duration: workTime,
                      initialDuration: 0,
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height / 2,
                      ringColor: Colors.grey[300],
                      fillColor: Colors.green[400],
                      backgroundColor: Colors.green[500],
                      strokeWidth: 20.0,
                      strokeCap: StrokeCap.round,
                      textStyle: TextStyle(fontSize: 33.0, color: Colors.white, fontWeight: FontWeight.bold),
                      textFormat: CountdownTextFormat.MM_SS,
                      autoStart: true,
                      onComplete: () {
                        if (repetitions == 1) {
                          context.read<TabataPageCubit>().finishTraining();
                        } else {
                          context.read<TabataPageCubit>().startRestingTime();
                        }
                      },
                    ),
                  ),
                ],
              ),
              resting: (workTime, restTime, repetitions) => Column(
                children: [
                  Text('¡APROVECHA PARA DESCANSAR!'),
                  CircularCountDownTimer(
                    duration: restTime,
                    initialDuration: 0,
                    isReverse: true,
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 2,
                    ringColor: Colors.amber[300],
                    ringGradient: null,
                    fillColor: Colors.amber[100],
                    fillGradient: null,
                    backgroundColor: Colors.amber[600],
                    strokeWidth: 20.0,
                    strokeCap: StrokeCap.round,
                    textStyle: TextStyle(fontSize: 33.0, color: Colors.white, fontWeight: FontWeight.bold),
                    textFormat: CountdownTextFormat.MM_SS,
                    autoStart: true,
                    onComplete: () => context.read<TabataPageCubit>().playTraining(),
                  ),
                ],
              ),
              finished: () => Center(
                child: Column(
                  children: [
                    Text('Terminado'),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NavigationPage(),
                            ),
                            (Route<dynamic> route) => false);
                        context.read<TabataPageCubit>().playTraining();
                      },
                      icon: Icon(Icons.arrow_back),
                      label: Text('Volver al inicio'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
