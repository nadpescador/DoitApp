import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tabata/resources/colors.dart';
import 'package:tabata/resources/strings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabata/resources/dimentions.dart';
import 'package:tabata/resources/text_styles.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_cubit.dart';
import 'package:tabata/presentation/historical_trainings/cubit/historical_trainings_state.dart';
import 'package:tabata/presentation/historical_trainings/cubit/historical_trainings_cubit.dart';

class TrainingHistoricalButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoricalTrainingsCubit, HistoricalTrainingsState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(Dimens.home_buttons_padding),
          child: InkWell(
            child: Container(
              height: Dimens.homeButtonHeight(context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimens.home_page_buttons_radius),
                gradient: LinearGradient(colors: [
                  AppColors.homePageTrainingHistoricalButtonInitial,
                  AppColors.homePageTrainingHistoricalButtonEnd,
                ]),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(Dimens.start_training_button_title_padding),
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            Strings.training_historics,
                            style: TextStyles.start_training,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      children: [
                        Text(
                          'Su ultimo entrenamiento fue el: ',
                          style: TextStyle(color: Colors.white),
                        ),
                        state.when(
                            initial: (workoutModel) => Text(
                                  DateFormat('dd/MM/yyyy ')
                                      .format(DateTime.tryParse(workoutModel.last.dateTime).toLocal()),
                                  style: TextStyle(color: Colors.white),
                                ),
                            loading: () => Center(
                                  child: CircularProgressIndicator(),
                                )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              context.read<TabataFormCubit>().startNewRoutine();
              Navigator.pushNamed(context, 'historical');
            },
          ),
        );
      },
    );
  }
}
