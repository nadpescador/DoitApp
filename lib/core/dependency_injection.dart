import 'package:hive/hive.dart';
import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';
import 'package:historical_repository/historical_repositories.dart';
import 'package:persistance_service/persistance_services.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_cubit.dart';

Future<void> init() async {
  final getIt = GetIt.instance;

  final documentDirectory = await getApplicationDocumentsDirectory();
  getIt.registerLazySingleton<TabataFormCubit>(() => TabataFormCubit());
  getIt.registerLazySingleton<PersistanceService>(() => PersistanceService(documentDirectory: documentDirectory.path));
  getIt.registerLazySingleton<HistoricalRepository>(() => HistoricalRepository(persistanceService: getIt()));
}
