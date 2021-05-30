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
      //video #25 Cria menu ambuger
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(55),
                  child: Image.asset('assets/images/userAvatar.png'),
                ),
                accountName: Text('Andre Lucio da Silva'),
                accountEmail: Text('andre.lucyo2@gmail.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              subtitle: Text('Tela de inicio.'),
              onTap: () {
                print('Tela home');
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Sair'),
              subtitle: Text('Encerrar sessão.'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
              subtitle: Text('Tela de configurações.'),
              onTap: () {
                print('Abre a tela configurações');
              },
            ),
          ],
        ),
      ),
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
        //fali a linhamentos da Coluna:
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contagem $contador'),
            CustomSwtch(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(height: 30, width: 30, color: Colors.red),
                Container(height: 30, width: 30, color: Colors.green),
                Container(height: 30, width: 30, color: Colors.purple),
              ],
            ),
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
