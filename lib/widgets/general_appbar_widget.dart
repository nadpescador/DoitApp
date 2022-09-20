import 'package:flutter/material.dart';
import 'package:tabata/resources/colors.dart';

class GeneralAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  GeneralAppbarWidget({
    Key key,
    this.appbarTitle = '',
    this.appbarBackground,
    this.height = 60,
  }) : super(key: key);

  final double height;
  final String appbarTitle;
  final Color appbarBackground;

  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Icon(
          Icons.arrow_back_ios_rounded,
          color: AppColors.historical_training_border_color,
        ),
      ),
      title: Text(appbarTitle, style: TextStyle(color: Color.fromARGB(255, 68, 65, 65))),
      backgroundColor: Colors.grey[50] ?? appbarBackground,
      foregroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
