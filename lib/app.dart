import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabata/presentation/counter_page/bloc/counter_widget_cubit.dart';
import 'package:tabata/presentation/home_page/home_page.dart';
import 'package:tabata/presentation/error_pages/error_page.dart';
import 'package:tabata/presentation/contact_page/contact_page.dart';
import 'package:tabata/presentation/tabata_form_pages/initial_form_page.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_cubit.dart';

class App extends StatelessWidget {
  App({this.tabataFormCubit})
      : assert(
          tabataFormCubit != null,
        );

  final TabataFormCubit tabataFormCubit;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => tabataFormCubit,
        ),
        BlocProvider(
          create: (_) => CounterPageCubit(tabataFormCubit),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: {
          'error': (context) => ErrorPage(),
          'contact': (context) => ContactPage(),
          'workout': (context) => InitialFormPage(),
        },
      ),
    );
  }
}
