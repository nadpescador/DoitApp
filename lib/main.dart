import 'package:hive/hive.dart';
import 'package:do_it_app/app.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:do_it_app/core/dependency_injection.dart' as inj;
import 'package:wakelock/wakelock.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await inj.init();
  await Wakelock.enable();

  runApp(
    App(),
  );
}
