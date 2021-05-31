import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tabata/resources/values.dart';
import 'package:tabata/resources/strings.dart';
import 'package:tabata/resources/dimentions.dart';
import 'package:tabata/resources/text_styles.dart';
import 'package:tabata/widgets/generic_button/generic_button_widget.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_cubit.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_state.dart';
import 'package:tabata/presentation/tabata_form_pages/tabata_form_select_resting_time.dart';

class TabataFormRepetitionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(Dimens.form_titles_padding),
              child: Text(
                Strings.rounds_per_training_title,
                style: TextStyles.getPagesTextStyles(context),
              ),
            ),
            BlocBuilder<TabataFormCubit, TabataFormState>(
              builder: (context, state) {
                return state.when(
                  started: (formViewModel) => Column(
                    children: [
                      NumberPicker(
                        value: formViewModel.repetitions,
                        minValue: Values.initial_tabata,
                        maxValue: 300,
                        onChanged: (value) => context.read<TabataFormCubit>().setRepetitions(value),
                      ),
                      formViewModel.repetitions != 0
                          ? GenericButtonWidget(
                              buttonLabel: Strings.form_next_button,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    child: TabataFormSelectRestingTime(),
                                    type: PageTransitionType.fade,
                                    curve: Curves.decelerate,
                                  ),
                                );
                              },
                            )
                          : GenericButtonWidget(
                              bgColor: Colors.grey,
                              buttonLabel: Strings.form_next_button,
                              onPressed: () => null,
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
