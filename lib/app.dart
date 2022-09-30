import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sound_provider/sound_provider.dart';
import 'package:historical_repository/historical_repositories.dart';
import 'package:persistance_service/implementation/persistance_service.dart';
import 'package:tabata/presentation/error_pages/error_page.dart';
import 'package:tabata/presentation/contact_page/contact_page.dart';
import 'package:tabata/presentation/login_page/page/login_page.dart';

class App extends StatelessWidget {
  App({
    required this.soundProvider,
    required this.historicalRepository,
    required this.persistanceService,
  });

  final SoundProvider soundProvider;
  final PersistanceService persistanceService;
  final HistoricalRepository historicalRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => soundProvider,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const LoginPage(),
        routes: {
          'error': (context) => ErrorPage(),
          'contact': (context) => ContactPage(),
        },
      ),
    );
  }
}
