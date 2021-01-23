import 'package:flutter/material.dart';
import 'package:tabata/widgets/vertical_buttons_widget.dart/vertical_buttons_widgets.dart';

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        child: Scaffold(
          backgroundColor: Colors.white24,
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/logotabata.png', scale: 3),
                VerticalButtons(),
              ],
            ),
          ),
        ));
  }
}
