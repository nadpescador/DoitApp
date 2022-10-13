import 'package:flutter/material.dart';
import 'package:tabata/widgets/generic_input/generic_input.dart';

class LoginInputs extends StatelessWidget {
  const LoginInputs({
    Key? key,
    required this.usernameController,
    required this.passwordController,
  }) : super(key: key);

  final TextEditingController usernameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenericInput(
          label: "Usuario",
          controller: usernameController,
          hint: "Username",
        ),
        GenericInput(
          label: "Contraseña",
          controller: passwordController,
          hint: "*****",
          obscureText: true,
        ),
      ],
    );
  }
}
