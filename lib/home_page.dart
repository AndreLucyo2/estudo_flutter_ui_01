import 'package:estudo_flutter_ui_01/CustomWidget/custom_swtch.dart';
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
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          //Usa o componente customizado
          CustomSwtch(),
        ],
      ),
      body: Container(
        //pega toda a largura da tela
        width: double.infinity,
        //pega toda a altura da tela
        height: double.infinity,
        //Usando o List Vew
        child: ListView(
          //Controlar o sentido do Scroll
          scrollDirection: Axis.vertical,
          children: [
            Text('Contagem $contador'),
            Container(width: 30, height: 30, color: Colors.amber),
            CustomSwtch(),
          ],
        ),
      ),
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
