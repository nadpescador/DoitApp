import 'package:flutter/material.dart';
import 'package:tabata/presentation/login_page/widgets/login_buttons.dart';
import 'package:tabata/presentation/login_page/widgets/login_layout.dart';
import 'package:tabata/resources/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonsHeight = MediaQuery.of(context).size.height * 0.4;
    return LoginLayout(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Welcome!",
                  style: TextStyle(
                    color: AppColors.scaffoldBackgroundColor,
                    fontSize: 32,
                  ),
                ),
              ),
              Image.asset("assets/images/home-page-image.png"),
            ],
          ),
          LoginButtons(
            height: buttonsHeight,
            onLogin: () => Navigator.of(context).pushNamed('userLogin'),
            onRegister: () => print("AAa"),
          ),
        ],
      ),
    );
  }
}
