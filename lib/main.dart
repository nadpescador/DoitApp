import 'package:firebase_core/firebase_core.dart';
import 'package:hive/hive.dart';
import 'package:sound_provider/sound_provider.dart';
import 'package:tabata/app.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:tabata/core/dependency_injection.dart' as inj;
import 'package:tabata/firebase_options.dart';
import 'package:wakelock/wakelock.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await inj.init();
  await Wakelock.enable();
  await Firebase.initializeApp(
    name: "Do It App",
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final app = Firebase.app();
  print(app.name);

  runApp(
    App(
      soundProvider: GetIt.I<SoundProvider>(),
    ),
  );
}
