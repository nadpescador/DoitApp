import 'package:flutter/material.dart';
import 'package:tabata/pages/que_es_tabata.dart';
import 'package:tabata/pages/sobre_creadores.dart';
import 'package:tabata/pages/tabata_work.dart';

import 'contactanos.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'Tabata App',
          ),
        ),
        backgroundColor: Colors.white12,
        body: Center(
          child: Column(
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
              _botones(context),
              Spacer(
                flex: 1,
              ),
            ],
          ),
        ));
  }
}

Widget _botones(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      new SizedBox(
        width: 350,
        height: 60,
        child: new FlatButton(
          color: Colors.green,
          textColor: Colors.white,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(15.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.local_fire_department, color: Colors.orange),
              Text(
                'Comenzá tu entrenamiento',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => TimerApp()));
          },
        ),
      ),
      SizedBox(
        height: 25,
      ),
      new SizedBox(
        width: 350,
        height: 60,
        child: new FlatButton(
          color: Colors.green,
          textColor: Colors.white,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(15.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.contact_support),
              Text(
                '¿Que es TABATA?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => QueEsTabata()));
          },
        ),
      ),
      SizedBox(
        height: 25,
      ),
      new SizedBox(
        width: 350,
        height: 60,
        child: new FlatButton(
          color: Colors.green,
          textColor: Colors.white,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(15.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.wb_incandescent,
                color: Colors.yellow,
              ),
              Text(
                'Sobre los creadores',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SobreCreadores()));
          },
        ),
      ),
      SizedBox(
        height: 25,
      ),
      new SizedBox(
        width: 350,
        height: 60,
        child: new FlatButton(
          color: Colors.green,
          textColor: Colors.white,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(15.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.mail,
                color: Colors.white60,
              ),
              Text(
                'Contactanos',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Contacto()));
          },
        ),
      ),
    ],
  );
}
