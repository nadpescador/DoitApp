import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            TabataLogoWidget(),
            CarouselSlider(
              options: CarouselOptions(
                height: Dimens.homeButtonHeight(context),
                initialPage: 0,
                viewportFraction: 0.7,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                enlargeStrategy: CenterPageEnlargeStrategy.scale,
              ),
              items: [
                Column(
                  children: [
                    Expanded(child: StartTrainingButtonWidget()),
                    InkWell(
                      onTap: () {
                        context.read<CounterPageCubit>().repeatLastTraining();
                        _openDialog(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orange,
                        ),
                        height: 50,
                        width: Dimens.repeatLastTrainingWidth(context),
                        child: Center(
                          child: Text(
                            Strings.repeat_last_training,
                            style: TextStyles.repeat_last_training,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                TrainingHistoricalButton(),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  void _openDialog(BuildContext context) {
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          return Transform.translate(
            offset: Offset.fromDirection(5),
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
