import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_cubit.dart';
import 'package:tabata/presentation/tabata_work_page/bloc/tabata_page_cubit.dart';
import 'package:tabata/widgets/generic_button/generic_button_widget.dart';

class VerticalButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 1,
                        color: Colors.grey,
                        offset: Offset(0, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Comenza a entrenar',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/workout.png',
                        fit: BoxFit.fill,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  context.read<TabataFormCubit>().startNewRoutine();
                  Navigator.pushNamed(context, 'workout');
                },
              ),
            );
            break;
          case 1:
            return Container(
              child: GenericButtonWidget(
                bgColor: Colors.grey,
                buttonLabel: 'Contactanos',
                onPressed: () => null,
              ),
            );
            break;
          default:
            return Container();
        }
      },
    );
  }
}
