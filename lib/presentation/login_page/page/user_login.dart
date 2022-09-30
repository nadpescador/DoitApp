import 'package:flutter/material.dart';
import 'package:do_it_app/presentation/login_page/widgets/login_layout.dart';

class UserLogin extends StatelessWidget {
  const UserLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginLayout(
        child: Center(
      child: TextButton(
        child: Text("algo"),
        onPressed: () => Navigator.pop(context),
      ),
    ));
  }
}
