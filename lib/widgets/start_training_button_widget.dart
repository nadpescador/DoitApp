import 'package:flutter/material.dart';
import 'package:tabata/resources/colors.dart';
import 'package:tabata/resources/strings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabata/resources/dimentions.dart';
import 'package:tabata/resources/text_styles.dart';
import 'package:tabata/resources/box_shadows.dart';
import 'package:tabata/resources/images/images.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_cubit.dart';

class StartTrainingButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            AppBoxShadows.home_page_start_training_button,
          ],
          borderRadius: BorderRadius.circular(15),
          color: AppColors.home_page_start_training_button,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(Dimens.start_training_button_title_padding),
              child: Text(
                Strings.start_training,
                style: TextStyles.start_training,
              ),
            ),
            Image.asset(
              AppImages.workout,
              fit: BoxFit.fill,
              filterQuality: FilterQuality.high,
              color: Colors.white,
            ),
          ],
        ),
      ),
      onTap: () {
        context.read<TabataFormCubit>().startNewRoutine();
        Navigator.pushNamed(context, 'workout');
      },
    );
  }
}
