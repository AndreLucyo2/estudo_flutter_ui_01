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
//Video #8
//Home page: pagina com estado
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState('video #6');
  }
}

//----------------------------------------------------------------------
//estado da pagina Home
class HomePageState extends State<HomePage> {
  final String titulo;
  HomePageState(this.titulo);
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text(titulo)));
  }
}
