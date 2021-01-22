import 'package:flutter/material.dart';

class CreatorsPage extends StatelessWidget {
  final String _imageUrl =
      "https://cdn.discordapp.com/attachments/690734319903178793/741547159501013052/reunion.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            'Tabata App',
          ),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Image.network(
                _imageUrl,
                width: 400,
              ),
              SizedBox(height: 20),
              SizedBox(
                  child: Card(
                      color: Colors.white70,
                      child: Padding(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "Somos un grupo de amigos que compartimos el mismo interés de innovar, por eso desarrollamos 'Tabata App', una aplicación que brinda posibilidad de llevar en una sola plataforma toda su rutina de  entrenamiento y sus avances diarios.",
                                style: TextStyle(
                                    fontSize: 22, color: Colors.black54),
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(12.0)),
                      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0))),
              Spacer(
                flex: 1,
              ),
            ],
          ),
        ));
  }
}
