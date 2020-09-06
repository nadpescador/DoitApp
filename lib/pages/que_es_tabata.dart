import 'package:flutter/material.dart';

class QueEsTabata extends StatelessWidget {
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
                "https://cdn.discordapp.com/attachments/690734319903178793/741543205123653642/kisspng-portable-network-graphics-treadmill-clip-art-carto-9-most-commonly-used-gym-equipment-fitnes.png",
              ),
              SizedBox(height: 20),
              Text(
                "¿Que es TABATA?",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                  child: Card(
                      color: Colors.white70,
                      child: Padding(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "Es un entrenamiento de alta intensidad, donde se podrá combinar varios ejercicios, variando entre 4 a 30 minutos. Se podrá optar por los siguientes niveles:\n\n -Principiante\n -Intermedio\n -Avanzado\n\n Comenza ya tu entrenamiento.",
                                style: TextStyle(
                                    fontSize: 23, color: Colors.black54),
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
