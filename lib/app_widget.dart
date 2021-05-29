//----------------------------------------------------------------------
import 'package:estudo_flutter_ui_01/app_controller.dart';
import 'package:estudo_flutter_ui_01/home_page.dart';
import 'package:estudo_flutter_ui_01/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //fica escutando as alterações re faz rebuild do Widget
    return AnimatedBuilder(
      animation: AppController.getInstancia,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.green,
            //Aplicar uma condição para alternar thema: Aplicar um if ternario
            brightness: AppController.getInstancia.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          //Video #19 - Definir a rota inicial
          initialRoute: '/',
          //Video #19 - Definir a rota nomeadas
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
          },
        );
      },
    );
  }
}
