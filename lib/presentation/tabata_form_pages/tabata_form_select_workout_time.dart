import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tabata/resources/colors.dart';
import 'package:tabata/resources/dimentions.dart';
import 'package:tabata/resources/strings.dart';
import 'package:tabata/resources/values.dart';
import 'package:tabata/resources/text_styles.dart';
import 'package:tabata/widgets/generic_button/generic_button_widget.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_cubit.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_state.dart';
import 'package:tabata/presentation/tabata_form_pages/tabata_form_repetitions.dart';
import 'package:tabata/widgets/shake_animation_widget.dart';

class TabataFormSelectWorkoutTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(Dimens.form_titles_padding),
            child: Text(
              Strings.seconds_per_round_title,
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
                        minValue: Values.initial_tabata,
                        step: 5,
                        maxValue: Values.max_tabata,
                        onChanged: (value) => context.read<TabataFormCubit>().setWorkoutTime(value),
                      ),
                    ),
                    tabataFormVM.workoutTime != 0
                        ? ShakeAnimationWidget(
                            duration: Duration(milliseconds: 900),
                            offset: 340,
                            child: GenericButtonWidget(
                              buttonLabel: Strings.form_next_button,
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
                          )
                        : ShakeAnimationWidget(
                            duration: Duration(milliseconds: 900),
                            offset: 340,
                            child: GenericButtonWidget(
                              bgColor: AppColors.inactive_button_background,
                              buttonLabel: Strings.form_next_button,
                              onPressed: () => null,
                            ),
                          )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
