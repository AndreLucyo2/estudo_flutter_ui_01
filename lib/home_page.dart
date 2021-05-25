import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//----------------------------------------------------------------------
//Home page: pagina com estado
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

//----------------------------------------------------------------------
//Estado da pagina Home
class HomePageState extends State<HomePage> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Container(
          width: 200,
          height: 200,
          color: Colors.amber,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.black,
            ),
          )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            //Modifica o estado da variavel: o setState refaz o Build
            setState(() {
              contador++;
            });
            print('Clicado no texto :$contador!!!');
          }),
    );
  }
}
