import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rive/rive.dart';
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
                  Text(
                    '¡TU PUEDES! TE QUEDAN $repetitions RONDAS',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
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
                  Text(
                    '¡APROVECHA PARA DESCANSAR!',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
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
                    Text(
                      '¡Entrenamiento completado!',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 300,
                      child: RiveAnimation.asset(
                        'assets/images/off_road_car.riv',
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            PageTransition(
                              child: NavigationPage(),
                              type: PageTransitionType.fade,
                              curve: Curves.decelerate,
                            ),
                            (Route<dynamic> route) => false);
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
