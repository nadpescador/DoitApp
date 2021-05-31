import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tabata/app.dart';

import 'package:tabata/core/dependency_injection.dart' as inj;
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_cubit.dart';

void main() {
  inj.init();

  runApp(
    App(
      tabataFormCubit: GetIt.I<TabataFormCubit>(),
    ),
  );
}
