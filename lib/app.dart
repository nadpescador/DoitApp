import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:do_it_app/presentation/error_pages/error_page.dart';
import 'package:do_it_app/presentation/contact_page/contact_page.dart';
import 'package:do_it_app/presentation/login_page/page/login_page.dart';
import 'package:do_it_app/presentation/login_page/page/user_login.dart';

class App extends StatelessWidget {
  App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'userLogin': (context) => const UserLogin(),
        'login': (context) => const LoginPage(),
        'error': (context) => ErrorPage(),
        'contact': (context) => ContactPage(),
      },
    );
  }
}
