import 'package:flutter/material.dart';
import 'package:tabata/widgets/generic_button/generic_button_widget.dart';

class LoginButtons extends StatelessWidget {
  const LoginButtons({
    required this.onLogin,
    this.onRegister,
    this.height,
  });

  final double? height;
  final VoidCallback onLogin;
  final VoidCallback? onRegister;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              GenericButtonWidget(
                buttonLabel: "Log In",
                onPressed: onLogin,
                bgColor: Color.fromRGBO(255, 119, 107, 1),
              ),
              onRegister != null
                  ? GenericButtonWidget(
                      buttonLabel: "Registrarse",
                      onPressed: onRegister,
                      bgColor: Colors.white,
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(132, 132, 132, 1),
                      ),
                    )
                  : Container(),
            ],
          ),
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
      ),
    );
  }
}
