import 'package:flutter/material.dart';

//Statefuk Widget para poder cambiar el valor del contador

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

//Si se le pone _ es una clase privada
class _ContadorPageState extends State<ContadorPage> {
 
  final _tamLetra = TextStyle(fontSize: 40.0);

  int _valorContador = 0; 
  //valorContador.toString() o "$valorContador" | es lo mismo

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador",),      
        centerTitle: false,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[ 
            Text("Número de clicks:", style: _tamLetra),
            Text("$_valorContador", style: _tamLetra),
          ],
        )
      ),
      floatingActionButton: _crearBotones()
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ); //Scaffold es un widget que ocupa toda la pantalla con AppBar, FAB, BottomBar y Drawers
  }

  Widget _crearBotones() => Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      SizedBox(width: 30.0),
      FloatingActionButton(child: Icon(Icons.exposure_zero), backgroundColor: Colors.blue , onPressed: _resetear),
      Expanded(child: SizedBox()),
      FloatingActionButton(child: Icon(Icons.remove), backgroundColor: Colors.blue, onPressed: _restar),
      SizedBox(width: 10.0,),
      FloatingActionButton(child: Icon(Icons.add), backgroundColor: Colors.blue, onPressed: _sumar),
      //No se añade () a las funciones de los botones para que se ejecute cuando se presiona
      //no cuando se crea
    ],
  );
   
  void _sumar(){ setState(() => _valorContador++);}
  void _restar(){setState(() {
    if (_valorContador > 0) {
      _valorContador--;
    }}     
  );}
  void _resetear(){setState(() => _valorContador = 0);}
}