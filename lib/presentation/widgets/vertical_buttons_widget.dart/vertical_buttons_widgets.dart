import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_cubit.dart';
import 'package:tabata/widgets/generic_button/generic_button_widget.dart';

class VerticalButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return GenericButtonWidget(
              buttonLabel: 'TABATA WORK',
              onPressed: () {
                context.read<TabataFormCubit>().startNewRoutine();
                Navigator.pushNamed(context, 'workout');
              },
            );
            break;
          case 1:
            return GenericButtonWidget(
                buttonLabel: 'Contact us',
                onPressed: () {
                  Navigator.pushNamed(context, 'contact');
                });
            break;
          case 2:
            return GenericButtonWidget(
                buttonLabel: 'About Us',
                onPressed: () {
                  Navigator.pushNamed(context, 'creators');
                });
            break;
          case 3:
            return GenericButtonWidget(
                buttonLabel: 'Error page',
                onPressed: () {
                  Navigator.pushNamed(context, 'error');
                });
            break;
          default:
            return Container();
        }
      },
    );
  }
}
