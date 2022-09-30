import 'package:flutter/material.dart';
import 'package:do_it_app/resources/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:do_it_app/resources/dimentions.dart';
import 'package:do_it_app/resources/text_styles.dart';
import 'package:do_it_app/resources/values.dart';

class StartTrainingButtonWidget extends StatelessWidget {
  final String title;

  const StartTrainingButtonWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.home_buttons_padding),
      child: InkWell(
        child: Container(
          height: Dimens.homeButtonHeight(context),
          decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(Dimens.home_page_buttons_radius),
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
                    padding: const EdgeInsets.all(
                        Dimens.start_training_button_title_padding),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        title,
                        style: TextStyles.start_training,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'Comienza un nuevo entrenamiento, seleccionando los tiempos que mas se adecuen a ti.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
