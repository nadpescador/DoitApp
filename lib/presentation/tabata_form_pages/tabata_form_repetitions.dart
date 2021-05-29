import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numberpicker/numberpicker.dart';
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
              padding: const EdgeInsets.all(18.0),
              child: Text(
                '¿Cuantas rondas desea entrenar?',
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
                        minValue: 0,
                        maxValue: 300,
                        onChanged: (value) => context.read<TabataFormCubit>().setRepetitions(value),
                      ),
                      formViewModel.repetitions != 0
                          ? GenericButtonWidget(
                              buttonLabel: 'Siguiente',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TabataFormSelectRestingTime(),
                                  ),
                                );
                              },
                            )
                          : GenericButtonWidget(
                              bgColor: Colors.grey,
                              buttonLabel: 'Siguiente',
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
