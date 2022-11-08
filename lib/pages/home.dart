
import 'package:flutter/material.dart';
import '../services/user_services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ActividadModel? _actividad;
  
  var idea;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nombre de actividad'),
        actions: [
          IconButton(onPressed: , Icon(Icons.add))
        ],
      ),
      body: Container(
        width: double.infinity,
        //color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                color: Colors.blue,
                child: Text(
                  'Boton',
                  style: TextStyle(color: Colors.white),)
                ),
              onPressed: () async {
                this.idea = await UserServices().getIdeas();
                setState(() {});
              }),
              if (this.idea != null) Text(this.idea!.activity),
          ],
        ),
      )
    );
  }
}