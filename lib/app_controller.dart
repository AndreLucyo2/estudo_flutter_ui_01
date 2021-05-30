import 'package:flutter/cupertino.dart';

//Gerencia de estado
//Video #12 classe que lança e fica ouvindo as alterações de um estado controlado
class AppController extends ChangeNotifier {
  //Usando padrao singleton: usa sempre a mesma instancia
  static AppController getInstancia = AppController();

  //pega o valor para mudar o estado:
  bool isDarkTheme = false;

  //Metoso para alterar a variavel:
  alternarThema() {
    //o ! alterna emtre false e true
    isDarkTheme = !isDarkTheme;

    //Notifica quem tiver escutando
    notifyListeners();
  }
}
