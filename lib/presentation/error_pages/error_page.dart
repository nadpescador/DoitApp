import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.red,
          child: Center(
            child: Text(
              '404: PAGE NOT FOUND',
              style: TextStyle(color: Colors.white, fontSize: 100),
            ),
          )),
    );
  }
}
