import 'package:flutter/material.dart';
import 'package:tabata/resources/dimentions.dart';
import 'package:tabata/resources/images/images.dart';

class TabataLogoWidget extends StatelessWidget {
  const TabataLogoWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'Bienvenido nuevamente, usuario',
                        maxLines: 2,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'Hoy tienes agendado entrenamiento de piernas',
                        maxLines: 2,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
