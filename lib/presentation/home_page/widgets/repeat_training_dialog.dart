import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tabata/presentation/counter_page/bloc/counter_widget_cubit.dart';
import 'package:tabata/presentation/counter_page/counter_widget.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_cubit.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_state.dart';

class RepeatTrainingDialog extends StatelessWidget {
  const RepeatTrainingDialog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabataFormCubit, TabataFormState>(
      builder: (context, state) {
        return state.when(
          started: (formViewModel) => AlertDialog(
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            title: FittedBox(
              child: Text('Empezara a entrenar con estos tiempos: '),
              fit: BoxFit.fitWidth,
            ),
            content: Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Entrenamiento: ' + formViewModel.workoutTime.toString() + 'seg.'),
                  Text('Repeticiones: ' + formViewModel.repetitions.toString() + 'seg.'),
                  Text('Descanso: ' + formViewModel.restingTime.toString() + 'seg.'),
                  SizedBox(
                    height: 50,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            PageTransition(
                              child: CounterPage(),
                              type: PageTransitionType.fade,
                            ),
                            (Route<dynamic> route) => false);
                        context.read<CounterPageCubit>().restartTabata();
                      },
                      child: Text(
                        'Comenzar >',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
