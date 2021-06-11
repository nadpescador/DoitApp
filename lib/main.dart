import 'package:hive/hive.dart';
import 'package:persistance_service/implementation/persistance_service.dart';
import 'package:tabata/app.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:tabata/core/dependency_injection.dart' as inj;
import 'package:historical_repository/historical_repositories.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await inj.init();

  Hive.init(GetIt.I<PersistanceService>().documentDirectory);
  await Hive.openBox('exercises');

  runApp(
    App(
      historicalRepository: GetIt.I<HistoricalRepository>(),
      tabataFormCubit: GetIt.I<TabataFormCubit>(),
      persistanceService: GetIt.I<PersistanceService>(),
    ),
  );
}
