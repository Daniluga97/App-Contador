//Directorio pages sirve para el widget que ocupe toda la pantalla.abstract

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  final tamLetra = TextStyle(fontSize: 40.0);

  final valorContador = 0; 
  //valorContador.toString() o "$valorContador" | es lo mismo

  @override
  Widget build(BuildContext context) { //Build sirve para dibujar/redibujar el widget
    return Scaffold(
      appBar: AppBar(
        title: Text("Título"),      
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[ 
            Text("Número de clicks:", style: tamLetra),
            Text("$valorContador", style: tamLetra),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, //Si es null no se puede pulsar, lo cambiamos a función anónima
        child: Icon(Icons.add),
        ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ); //Scaffold es un widget que ocupa toda la pantalla con AppBar, FAB, BottomBar y Drawers
  }
}