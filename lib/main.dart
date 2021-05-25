import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(AppWidget(titulo: 'video #6'));
}

//Video #6 https://youtu.be/4CCW_cdVBQg
//widget sem estado, sem animação...
class AppWidget extends StatelessWidget {
  final String titulo;

  //Construtor recebe o parametro:
  const AppWidget({Key key, this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          titulo,
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 45.0),
        ),
      ),
    );
  }
}
