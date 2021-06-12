import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistance_service/implementation/persistance_service.dart';
import 'package:tabata/presentation/home_page/home_page.dart';
import 'package:tabata/presentation/error_pages/error_page.dart';
import 'package:historical_repository/historical_repositories.dart';
import 'package:tabata/presentation/contact_page/contact_page.dart';
import 'package:tabata/presentation/tabata_form_pages/initial_form_page.dart';
import 'package:tabata/presentation/counter_page/bloc/counter_widget_cubit.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_cubit.dart';
import 'package:tabata/presentation/historical_trainings/historical_trainings_page.dart';

class App extends StatelessWidget {
  App({
    @required this.tabataFormCubit,
    @required this.historicalRepository,
    @required this.persistanceService,
  })  : assert(tabataFormCubit != null),
        assert(historicalRepository != null),
        assert(historicalRepository != null);

  final TabataFormCubit tabataFormCubit;
  final PersistanceService persistanceService;
  final HistoricalRepository historicalRepository;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => tabataFormCubit,
        ),
        BlocProvider(
          create: (_) => CounterPageCubit(
            tabataFormCubit,
            historicalRepository,
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: {
          'error': (context) => ErrorPage(),
          'contact': (context) => ContactPage(),
          'workout': (context) => InitialFormPage(),
          'historical': (context) => HistoricalTrainingsPage(),
        },
      ),
    );
  }
}
