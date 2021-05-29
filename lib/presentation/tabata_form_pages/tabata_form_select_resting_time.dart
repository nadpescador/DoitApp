import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_cubit.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_state.dart';
import 'package:tabata/presentation/tabata_work_page/tabata_work_page_loaded.dart';
import 'package:tabata/resources/text_styles.dart';
import 'package:tabata/widgets/generic_button/generic_button_widget.dart';

class TabataFormSelectRestingTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                '¿Cuanto tiempo tendra de descanso? ',
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
                              buttonLabel: 'Comenzar a entrenar',
                              onPressed: () => Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TabataWorkPageLoaded(
                                      restingTime: formVM.restingTime,
                                      workoutRounds: formVM.repetitions,
                                      workoutTime: formVM.workoutTime,
                                    ),
                                  ),
                                  (Route<dynamic> route) => false))
                          : GenericButtonWidget(
                              bgColor: Colors.grey,
                              buttonLabel: 'Comenzar a entrenar',
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
