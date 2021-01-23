import 'package:flutter/material.dart';
import 'package:tabata/presentation/contact_page/contact_page.dart';
import 'package:tabata/presentation/static_pages/sobre_creadores.dart';
import 'package:tabata/presentation/tabata_info_page.dart';
import 'package:tabata/presentation/tabata_work/tabata_work_page.dart';
import 'presentation/navigation_page/navigation_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationPage(),
      routes: {
        '/': (context) => NavigationPage(),
        'workout': (context) => TabataWorkPage(),
        'contact': (context) => ContactPage(),
        'creators': (context) => CreatorsPage(),
        'information': (context) => TabataInformation(),
      },
    );
  }
}
