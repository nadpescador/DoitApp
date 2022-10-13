import 'package:flutter/material.dart';
import 'package:tabata/presentation/login_page/widgets/login_buttons.dart';
import 'package:tabata/presentation/login_page/widgets/login_layout.dart';
import 'package:tabata/presentation/login_page/widgets/login_title.dart';
import 'package:tabata/resources/text_styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginLayout(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              LoginTitle(title: "Welcome!"),
              Image.asset("assets/images/home-page-image.png"),
            ],
          ),
          LoginButtons(
            onLogin: () => Navigator.of(context).pushNamed('userLogin'),
            onRegister: () => print("AAa"),
          ),
        ],
      ),
    );
  }
}
