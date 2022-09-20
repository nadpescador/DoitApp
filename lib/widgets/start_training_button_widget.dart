import 'package:flutter/material.dart';
import 'package:tabata/presentation/tabata_form_pages/initial_form_page.dart';
import 'package:tabata/resources/colors.dart';
import 'package:tabata/resources/strings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabata/resources/dimentions.dart';
import 'package:tabata/resources/text_styles.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_cubit.dart';
import 'package:tabata/resources/values.dart';

class StartTrainingButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.home_buttons_padding),
      child: InkWell(
        child: Container(
          height: Dimens.homeButtonHeight(context),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimens.home_page_buttons_radius),
              gradient: LinearGradient(
                colors: [
                  AppColors.homePageTrainingButtonInitial,
                  AppColors.homePageTrainingButtonEnd,
                ],
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(Dimens.start_training_button_title_padding),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        Strings.start_training,
                        style: TextStyles.start_training,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'Comienza un nuevo entrenamiento, seleccionando los tiempos que mas se adecuen a ti.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          context.read<TabataFormCubit>().startNewRoutine();
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (c, a1, a2) => InitialFormPage(),
              transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
              transitionDuration: Duration(milliseconds: Values.transition_page_duration),
            ),
          );
        },
      ),
    );
  }
}
