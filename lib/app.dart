import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sound_provider/sound_provider.dart';
import 'package:historical_repository/historical_repositories.dart';
import 'package:persistance_service/implementation/persistance_service.dart';
import 'package:tabata/presentation/home_page/home_page.dart';
import 'package:tabata/presentation/error_pages/error_page.dart';
import 'package:tabata/presentation/contact_page/contact_page.dart';
import 'package:tabata/presentation/tabata_form_pages/initial_form_page.dart';
import 'package:tabata/presentation/counter_page/bloc/counter_widget_cubit.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_cubit.dart';
import 'package:tabata/presentation/historical_trainings/historical_trainings_page.dart';
import 'package:tabata/presentation/historical_trainings/cubit/historical_trainings_cubit.dart';

class App extends StatelessWidget {
  App({
    @required this.soundProvider,
    @required this.tabataFormCubit,
    @required this.historicalRepository,
    @required this.persistanceService,
  })  : assert(tabataFormCubit != null),
        assert(historicalRepository != null);

  final SoundProvider soundProvider;
  final TabataFormCubit tabataFormCubit;
  final PersistanceService persistanceService;
  final HistoricalRepository historicalRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => soundProvider,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (_) => HistoricalTrainingsCubit(
                    historicalRepository: GetIt.I<HistoricalRepository>(),
                  )),
          BlocProvider(create: (context) => tabataFormCubit),
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
      ),
    );
  }
}
