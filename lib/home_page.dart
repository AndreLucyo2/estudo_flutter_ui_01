import 'package:estudo_flutter_ui_01/CustomWidget/custom_swtch.dart';
import 'package:estudo_flutter_ui_01/app_controller.dart';
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
        //linhamentos da linhas:
        child: Row(
          //Alinhamento do eixo principal Vertical
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contagem $contador'),
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
