import 'package:flutter/material.dart';
import 'package:tabata/presentation/login_page/widgets/login_layout.dart';
import 'package:tabata/widgets/generic_button/generic_button_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var color = Color.fromRGBO(70, 73, 238, 1);

    return LoginLayout(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Welcome!",
                    style: TextStyle(
                      color: color,
                      fontSize: 32,
                    ),
                  ),
                ),
                Image.asset("assets/images/home-page-image.png"),
              ],
            ),
            _LoginBody(),
          ],
        ),
      ),
    );
  }
}

class _LoginBody extends StatelessWidget {
  const _LoginBody();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenericButtonWidget(
          buttonLabel: "Log In",
          onPressed: () => Navigator.pushNamed(context, 'userLogin'),
          bgColor: Color.fromRGBO(255, 119, 107, 1),
        ),
        GenericButtonWidget(
          buttonLabel: "Registrarse",
          onPressed: () => print("AAA"),
          bgColor: Colors.white,
          textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(132, 132, 132, 1),
          ),
        ),
        SizedBox(height: 50),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.grey,
          ),
          onPressed: () {},
          child: Text(
            "Recuperar contraseña",
          ),
        ),
      ],
    );
  }
}
