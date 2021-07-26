import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sound_provider/sound_provider.dart';
import 'package:tabata/resources/strings.dart';
import 'package:tabata/resources/dimentions.dart';
import 'package:tabata/resources/text_styles.dart';
import 'package:tabata/presentation/counter_page/counter_widget.dart';
import 'package:tabata/widgets/generic_button/generic_button_widget.dart';
import 'package:tabata/presentation/counter_page/bloc/counter_widget_cubit.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_cubit.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_state.dart';

class TabataFormSelectRestingTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final soundProvider = context.read<SoundProvider>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(Dimens.form_titles_padding),
              child: Text(
                Strings.resting_time_between_rounds_title,
                style: TextStyles.getPagesTextStyles(context),
              ),
            ),
            BlocBuilder<TabataFormCubit, TabataFormState>(
              builder: (context, state) {
                return state.when(
                  started: (formVM) => Column(
                    children: [
                      NumberPicker(
                        value: formVM.restingTime,
                        minValue: 0,
                        maxValue: 300,
                        onChanged: (value) => context.read<TabataFormCubit>().setRestingTime(value),
                      ),
                      formVM.restingTime != 0
                          ? GenericButtonWidget(
                              buttonLabel: Strings.start_routine_button,
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    PageTransition(
                                      child: CounterPage(soundProvider: soundProvider),
                                      type: PageTransitionType.fade,
                                    ),
                                    (Route<dynamic> route) => false);
                                context.read<CounterPageCubit>().restartTabata();
                              })
                          : GenericButtonWidget(
                              bgColor: Colors.grey,
                              buttonLabel: Strings.start_routine_button,
                              onPressed: () => null,
                            )
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
