import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tabata/presentation/historical_trainings/cubit/historical_trainings_cubit.dart';
import 'package:tabata/presentation/historical_trainings/cubit/historical_trainings_state.dart';
import 'package:tabata/presentation/home_page/widgets/add_custom_training_item.dart';
import 'package:tabata/resources/colors.dart';
import 'package:tabata/resources/strings.dart';
import 'package:tabata/resources/dimentions.dart';
import 'package:tabata/resources/text_styles.dart';
import 'package:tabata/widgets/training_historical_button.dart';
import 'package:tabata/widgets/start_training_button_widget.dart';
import 'package:tabata/presentation/home_page/widgets/tabata_logo_widget.dart';
import 'package:tabata/presentation/counter_page/bloc/counter_widget_cubit.dart';
import 'package:tabata/presentation/home_page/widgets/repeat_training_dialog.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TabataLogoWidget(),
              TrainingHistoricalButton(),
              Column(
                children: [
                  StartTrainingButtonWidget(),
                  BlocBuilder<HistoricalTrainingsCubit, HistoricalTrainingsState>(
                    builder: (context, state) {
                      return state.when(
                        initial: (data) => InkWell(
                          onTap: () {
                            if (data.isNotEmpty) {
                              context.read<CounterPageCubit>().repeatLastTraining();
                              _openDialog(context);
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: data.isNotEmpty
                                      ? LinearGradient(colors: [
                                          AppColors.repeatTrainingButtonInitial,
                                          AppColors.repeatTrainingButtonEnd,
                                        ])
                                      : LinearGradient(colors: [
                                          Colors.grey,
                                          Colors.grey,
                                        ])),
                              height: 50,
                              width: Dimens.repeatLastTrainingWidth(context),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      Strings.repeat_last_training,
                                      style: TextStyles.repeat_last_training,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        loading: () => Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    },
                  )
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'Entrenamientos personalizados',
                          maxLines: 2,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: Dimens.carrouselItemHeight(context),
                          initialPage: 0,
                          viewportFraction: 0.8,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: false,
                        ),
                        items: [
                          AddCustomTrainingItem(),
                          AddCustomTrainingItem(),
                          AddCustomTrainingItem(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    ));
  }

  void _openDialog(BuildContext context) {
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          final curvedValue = Curves.easeInOutBack.transform(a1.value) - 1;
          return Transform(
            transform: Matrix4.translationValues(0, curvedValue * 200, 0),
            child: Opacity(
              opacity: a1.value,
              child: RepeatTrainingDialog(),
            ),
          );
        },
        transitionDuration: Duration(milliseconds: 200),
        barrierDismissible: true,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {});
  }
}
