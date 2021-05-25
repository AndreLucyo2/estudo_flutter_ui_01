import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(AppWidget(titulo: 'video #6'));
}

//Video #7 https://youtu.be/nCYtIyrSRpg?list=PLlBnICoI-g-d-J57QIz6Tx5xtUDGQdBFB
class AppWidget extends StatelessWidget {
  final String titulo;

  //Construtor recebe o parametro:
  const AppWidget({Key key, this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Container(
        child: Center(
          child: Text(titulo),
        ),
      ),
    );
  }
}
