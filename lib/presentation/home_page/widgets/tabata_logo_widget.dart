import 'package:flutter/material.dart';
import 'package:tabata/resources/dimentions.dart';
import 'package:tabata/resources/images/images.dart';

class TabataLogoWidget extends StatelessWidget {
  const TabataLogoWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(Dimens.home_page_padding),
            child: Image.asset(
              AppImages.logo_tabata,
              scale: 8.2,
              fit: BoxFit.contain,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bienvenido devuelta, usuario',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                'Hoy tienes agendado entrenamiento de piernas',
              )
            ],
          )
        ],
      ),
    );
  }
}
