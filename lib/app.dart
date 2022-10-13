import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sound_provider/sound_provider.dart';
import 'package:historical_repository/historical_repositories.dart';
import 'package:tabata/presentation/error_pages/error_page.dart';
import 'package:tabata/presentation/contact_page/contact_page.dart';
import 'package:tabata/presentation/home_page/view/home_page.dart';
import 'package:tabata/presentation/login_page/bloc/login_bloc.dart';
import 'package:tabata/presentation/login_page/page/login_page.dart';
import 'package:tabata/presentation/login_page/page/user_login.dart';
import 'package:tabata/presentation/on_boarding_page/on_boarding_page.dart';

class App extends StatelessWidget {
  App({
    required this.soundProvider,
  });

  final SoundProvider soundProvider;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => soundProvider,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (ctx) => LoginBloc()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: 'onBoarding',
          routes: {
            'userLogin': (context) => const UserLogin(),
            'login': (context) => const LoginPage(),
            'error': (context) => ErrorPage(),
            'contact': (context) => ContactPage(),
            'onBoarding': (context) => OnBoardingPage(),
            'home': (context) => HomePage(),
          },
        ),
      ),
    );
  }
}
