import 'package:hive/hive.dart';
import 'package:sound_provider/sound_provider.dart';
import 'package:tabata/app.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:tabata/core/dependency_injection.dart' as inj;
import 'package:historical_repository/historical_repositories.dart';
import 'package:wakelock/wakelock.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await inj.init();
  await Wakelock.enable();

  runApp(
    App(
      soundProvider: GetIt.I<SoundProvider>(),
    ),
  );
}
