import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tabata/core/dependency_injection.dart' as inj;
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_cubit.dart';
import 'package:tabata/presentation/tabata_form_pages/initial_form_page.dart';
import 'presentation/navigation_page/navigation_page.dart';
import 'package:tabata/presentation/error_pages/error_page.dart';
import 'package:tabata/presentation/contact_page/contact_page.dart';
import 'package:tabata/presentation/static_pages/sobre_creadores.dart';
import 'package:tabata/presentation/static_pages/tabata_info_page.dart';
import 'package:tabata/presentation/tabata_work_page/bloc/tabata_page_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final tabataFormCubit = TabataFormCubit();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => tabataFormCubit,
        ),
        BlocProvider(
          create: (_) => TabataPageCubit(tabataFormCubit),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NavigationPage(),
        routes: {
          'error': (context) => ErrorPage(),
          'contact': (context) => ContactPage(),
          'creators': (context) => CreatorsPage(),
          'workout': (context) => InitialFormPage(),
          'information': (context) => TabataInformationPage(),
        },
      ),
    );
  }
}
