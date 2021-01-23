import 'package:flutter/material.dart';

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'Tabata App',
          ),
        ),
        backgroundColor: Colors.white24,
        body: Center(
          child: ListView(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.network(
                "https://cdn.discordapp.com/attachments/690734319903178793/741496850208784405/logotabata.png",
                height: 130,
                width: 200,
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 100,
              ),
              Center(
                  child: Text("Created by Davincex",
                      style: TextStyle(color: Colors.white)))
            ],
          ),
        ));
  }
}
