import 'package:flutter/material.dart';
import '../app_controller.dart';

//Video #13  https://youtu.be/3Ewsld55J8E?list=PLlBnICoI-g-d-J57QIz6Tx5xtUDGQdBFB
//Retorna um Widget customizado
class CustomSwtch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      //Seta o valor da variavel do controller:
      value: AppController.getInstancia.isDarkTheme,
      onChanged: (value) {
        //Executa o metodo para alternar o thema:
        AppController.getInstancia.alternarThema();
      },
    );
  }
}
