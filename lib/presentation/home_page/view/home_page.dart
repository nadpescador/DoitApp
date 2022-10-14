import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Hola, $username'),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('onBoarding'),
              child: Text("Return to onboarding"),
            ),
          ],
        ),
      ),
    );
  }
}
