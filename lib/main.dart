import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(AppWidget());
}

//----------------------------------------------------------------------
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}

//----------------------------------------------------------------------
//Video #8 https://youtu.be/8-mnyze0gKw?list=PLlBnICoI-g-d-J57QIz6Tx5xtUDGQdBFB
//Home page: pagina com estado
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

//----------------------------------------------------------------------
//estado da pagina Home
class HomePageState extends State<HomePage> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      //detecta gestos em um widget toque por exemplo
      child: GestureDetector(
        child: Text('tocou :$contador'),
        //evento de toque: executa quando for clicado:
        onTap: () {
          //Modifica o estado da variavel: o setState refaz o Build
          setState(() {
            contador++;
          });
          print('Clicado :$contador!!!');
        },
      ),
    ));
  }
}
