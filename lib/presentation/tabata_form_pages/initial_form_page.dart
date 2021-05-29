import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_cubit.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_state.dart';
import 'package:tabata/presentation/tabata_form_pages/tabata_form_select_workout_time.dart';

class InitialFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TabataFormCubit, TabataFormState>(
        builder: (_, state) => state.when(
          started: (tabataFormVM) => TabataFormSelectWorkoutTime(),
        ),
      ),
    );
  }
}
