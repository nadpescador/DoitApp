import 'package:flutter/material.dart';
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
                Navigator.pushNamed(context, 'contact');
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
