import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:historical_repository/implementation/historical_repository.dart';
import 'package:tabata/presentation/historical_trainings/cubit/historical_trainings_cubit.dart';
import 'package:tabata/presentation/historical_trainings/cubit/historical_trainings_state.dart';

class HistoricalTrainingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de entrenamientos'),
      ),
      body: BlocProvider(
        create: (_) => HistoricalTrainingsCubit(
          historicalRepository: GetIt.I<HistoricalRepository>(),
        ),
        child: BlocBuilder<HistoricalTrainingsCubit, HistoricalTrainingsState>(
          builder: (context, state) {
            return state.when(
              loading: () => Center(
                child: CircularProgressIndicator(),
              ),
              initial: (workouts) => ListView.builder(
                itemCount: workouts.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    ListTile(
                      title: Text('Duración de entrenamiento: ${workouts[index].workTime}'),
                      subtitle: Text('Rondas de entrenamiento: ${workouts[index].repetitions}'),
                    ),
                    Divider(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
