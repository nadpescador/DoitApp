import 'package:flutter/material.dart';
import 'package:tabata/resources/colors.dart';

class AddCustomTrainingItem extends StatelessWidget {
  const AddCustomTrainingItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.tabata_work_background,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 300,
      width: 300,
      child: Center(
        child: Icon(
          Icons.add,
          size: 50,
          color: Colors.grey,
        ),
      ),
    );
  }
}
