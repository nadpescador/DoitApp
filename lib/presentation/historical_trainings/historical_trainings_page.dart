import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:historical_repository/implementation/historical_repository.dart';
import 'package:intl/intl.dart';
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
              initial: (workouts) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'El ultimo entrenamiento fue el ${DateFormat('dd/MM/yyyy').format(DateTime.tryParse(workouts.last.dateTime)) ?? ''}',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: workouts.length,
                      itemBuilder: (context, index) => Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  title: Text('Duración de entrenamiento: ${workouts[index].workTime}'),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Rondas de entrenamiento: ${workouts[index].repetitions}'),
                                      Text(
                                          'El entrenamiento fue el: ${DateFormat('dd/MM/yyyy').format(DateTime.tryParse(workouts[index].dateTime))}')
                                    ],
                                  ),
                                  trailing: Icon(
                                    Icons.check_circle_outline_rounded,
                                    color: Colors.green,
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
              ),
            );
          },
        ),
      ),
    );
  }
}
