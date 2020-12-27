//Contiene toda la lógica del MaterialApp()
import 'package:contador/src/pages/contador_page.dart';
import 'package:flutter/material.dart';

//import 'package:contador/src/pages/home_page.dart';

// StatelessWidget AKA Bloque estático de LEGO
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Center(
        //child: HomePage(),
         child: ContadorPage(),
      ),
      debugShowCheckedModeBanner: false, //Quita la barra de DEBUG
    );
  }
}