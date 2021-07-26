import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabata/resources/colors.dart';
import 'package:tabata/resources/strings.dart';
import 'package:tabata/resources/dimentions.dart';
import 'package:tabata/resources/images/icons.dart';
import 'package:historical_repository/implementation/historical_repository.dart';
import 'package:tabata/presentation/historical_trainings/cubit/historical_trainings_cubit.dart';
import 'package:tabata/presentation/historical_trainings/cubit/historical_trainings_state.dart';

class HistoricalTrainingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.historical_training_appbar_title),
      ),
      body: BlocBuilder<HistoricalTrainingsCubit, HistoricalTrainingsState>(
        builder: (_, state) {
          return state.when(
            loading: () => Center(
              child: CircularProgressIndicator(),
            ),
            initial: (workouts) {
              if (workouts.isEmpty || workouts == null)
                return Center(
                  child: Text(
                    Strings.historical_training_no_workouts,
                  ),
                );
              else
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(Dimens.historical_training_card_padding),
                      child: Text(
                        Strings.historicalTrainingLastDate(workouts.last.dateTime),
                        style: TextStyle(color: AppColors.historical_training_last_date),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: workouts.length,
                        itemBuilder: (_, index) => Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(Dimens.historical_training_card_padding),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.historical_training_border_color,
                                      width: Dimens.historical_training_card_border_width,
                                    ),
                                    borderRadius: BorderRadius.circular(Dimens.historical_training_card_border_radius)),
                                child: Padding(
                                  padding: const EdgeInsets.all(Dimens.historical_training_card_padding),
                                  child: ListTile(
                                    title: Text(Strings.historicalTrainingCardTitle(workouts[index].workTime)),
                                    subtitle: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(Strings.historicalTrainingCardTrainingRounds(workouts[index].repetitions)),
                                        Text(
                                          Strings.historicalTrainingCardTrainingDate(DateFormat('dd/MM/yyyy ')
                                              .format(DateTime.tryParse(workouts[index].dateTime).toLocal())),
                                        )
                                      ],
                                    ),
                                    trailing: Icon(
                                      AppIcons.check_icon,
                                      color: AppColors.historical_training_trailing_icon_color,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
            },
          );
        },
      ),
    );
  }
}
