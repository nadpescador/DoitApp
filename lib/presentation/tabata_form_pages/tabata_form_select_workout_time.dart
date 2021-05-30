import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_cubit.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_state.dart';
import 'package:tabata/presentation/tabata_form_pages/tabata_form_repetitions.dart';
import 'package:tabata/resources/text_styles.dart';
import 'package:tabata/widgets/generic_button/generic_button_widget.dart';

class TabataFormSelectWorkoutTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<TabataFormCubit, TabataFormState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  '¿Cuantos segundos entrenara por ronda?',
                  style: TextStyles.getPagesTextStyles(context),
                ),
              ),
              BlocBuilder<TabataFormCubit, TabataFormState>(
                builder: (context, state) {
                  return state.when(
                      started: (tabataFormVM) => Column(
                            children: [
                              Container(
                                child: NumberPicker(
                                  value: tabataFormVM.workoutTime,
                                  minValue: 0,
                                  step: 5,
                                  maxValue: 300,
                                  onChanged: (value) => context.read<TabataFormCubit>().setWorkoutTime(value),
                                ),
                              ),
                              tabataFormVM.workoutTime != 0
                                  ? Column(
                                      children: [
                                        GenericButtonWidget(
                                          buttonLabel: 'Siguiente',
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              PageTransition(
                                                child: TabataFormRepetitionsPage(),
                                                type: PageTransitionType.fade,
                                              ),
                                            );
                                          },
                                        ),
                                      ],
                                    )
                                  : GenericButtonWidget(
                                      bgColor: Colors.grey,
                                      buttonLabel: 'Siguiente',
                                      onPressed: () => null,
                                    )
                            ],
                          ));
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
