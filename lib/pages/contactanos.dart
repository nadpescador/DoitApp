import 'package:flutter/material.dart';

class Contacto extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContactoState();
  }
}

class ContactoState extends State<Contacto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Tabata App',
        ),
      ),
      body: Column(
        children: <Widget>[
          Divider(),
          Text(
            "CONTACTO",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          _contacto(),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => {}),
    );
  }

  Widget _contacto() {
    return Padding(
      padding: EdgeInsets.all(30.0),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8.0,
                    offset: Offset(0, 10),
                  ),
                ]),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Colors.grey[100]))),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Ingrese su nombre",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Colors.grey[100]))),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Ingrese su apellido",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Colors.grey[100]))),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Ingrese su email",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Colors.grey[100]))),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Ingrese el asunto",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Escriba aqui su mensaje",
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
