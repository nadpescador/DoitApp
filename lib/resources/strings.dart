import 'package:intl/intl.dart';

class Strings {
//Form page
  static const start_training = 'Comenzá a entrenar';
  static const training_historics = 'Historial de entrenamientos';

// Countdown timer
  static const back_to_home = 'Volver al inicio';
  static const get_some_rest = '¡Aprovecha para descansar!';
  static const training_completed_label = '¡Entrenamiento completado!';

  static const seconds_per_round_title = '¿Cuantos segundos entrenara por ronda?';
  static const form_next_button = 'Siguiente';

  static const rounds_per_training_title = '¿Cuantas rondas desea entrenar?';

  static const resting_time_between_rounds_title = '¿Cuanto tiempo tendra de descanso?';

  static const start_routine_button = 'Comenzar el entrenamiento';
  static String roundsLeft(int repetitions) => '¡Tu puedes! Te quedan $repetitions rondas';

  //Historical Workouts
  static const historical_training_appbar_title = 'Historial de entrenamientos';
  static const historical_training_no_workouts = 'No hay entrenamientos en el historial.';

  static String historicalTrainingLastDate(String dateTime) =>
      'El ultimo entrenamiento fue el ${DateFormat('dd/MM/yyyy').format(DateTime.tryParse(dateTime)) ?? ''}';
  static String historicalTrainingCardTitle(int workTime) => 'Duración de entrenamiento: $workTime';

  static String historicalTrainingCardTrainingRounds(int repetitions) => 'Rondas de entrenamiento: $repetitions';
  static String historicalTrainingCardTrainingDate(String dateTime) => 'El entrenamiento fue el: $dateTime';

//////////////
}
