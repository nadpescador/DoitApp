import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:tabata/resources/colors.dart';
import 'package:tabata/resources/strings.dart';
import 'package:tabata/resources/dimentions.dart';
import 'package:tabata/resources/text_styles.dart';
import 'package:tabata/presentation/home_page/home_page.dart';
import 'package:tabata/presentation/counter_page/bloc/counter_page_state.dart';
import 'package:tabata/presentation/counter_page/bloc/counter_widget_cubit.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.tabata_work_background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterPageCubit, CounterPageState>(
              builder: (context, state) {
                return state.when(
                  playing: (workTime, restTime, repetitions) => Column(
                    children: [
                      Text(
                        Strings.roundsLeft(repetitions),
                        style: TextStyles.top_timer_messages,
                      ),
                      Container(
                        child: CircularCountDownTimer(
                          duration: workTime,
                          width: Dimens.timerWidth(context),
                          height: Dimens.timerHeight(context),
                          ringColor: AppColors.playingTimerRing,
                          fillColor: AppColors.playingTimerFill,
                          backgroundColor: AppColors.playingTimerBackground,
                          strokeWidth: 20.0,
                          strokeCap: StrokeCap.round,
                          textStyle: TextStyles.circular_timer_seconds,
                          textFormat: CountdownTextFormat.MM_SS,
                          autoStart: true,
                          onComplete: () {
                            if (repetitions == 1) {
                              context.read<CounterPageCubit>().finishTraining();
                            } else {
                              context.read<CounterPageCubit>().startRestingTime();
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  resting: (workTime, restTime, repetitions) => Column(
                    children: [
                      Text(
                        Strings.get_some_rest,
                        style: TextStyles.get_some_rest,
                      ),
                      CircularCountDownTimer(
                        duration: restTime,
                        isReverse: true,
                        width: Dimens.timerWidth(context),
                        height: Dimens.timerHeight(context),
                        ringColor: AppColors.restingTimerRing,
                        fillColor: AppColors.restingTimerFill,
                        backgroundColor: AppColors.restingTimerBackground,
                        strokeWidth: 20.0,
                        strokeCap: StrokeCap.round,
                        textStyle: TextStyles.circular_timer_seconds,
                        textFormat: CountdownTextFormat.MM_SS,
                        autoStart: true,
                        onComplete: () => context.read<CounterPageCubit>().playTraining(),
                      ),
                    ],
                  ),
                  finished: () => Column(
                    children: [
                      Text(
                        Strings.training_completed_label,
                        style: TextStyles.training_completed_label,
                      ),
                      Container(
                        height: Dimens.trainingFinishedAnimationHeight(context),
                        width: Dimens.trainingFinishedAnimationWidth(context),
                        //TODO agregar animacion de terminado
                        child: Container(),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              PageTransition(
                                child: HomePage(),
                                type: PageTransitionType.fade,
                                curve: Curves.decelerate,
                              ),
                              (Route<dynamic> route) => false);
                        },
                        icon: Icon(Icons.arrow_back),
                        label: Text(Strings.back_to_home),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
