import 'package:estudo_flutter_ui_01/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Guarda os valores dos campos
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          //pegar as dimeções ta tela:
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,

          child: Padding(
            //adicionado Padding
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Campo de texto:
                TextField(
                  //Definir o tipo de teclado
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  //Pega o valor do campo:
                  onChanged: (text) {
                    email = text;
                  },
                ),
                //Separador
                Container(height: 20),

                TextField(
                  //Ocultar senha:
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                  //Pega o valor do campo:
                  onChanged: (text) {
                    senha = text;
                  },
                ),

                //Separador
                Container(height: 20),

                //Criar um botão
                ElevatedButton(
                  child: Text('Entrar'),
                  onPressed: () {
                    //Faz a validação do login:
                    if (email.isEmpty && senha.isEmpty) {
                      print('Campo senha e email nao podem ser vazios!');
                      return;
                    }
                    //Sucesso!
                    if (email == 'als@gmail.com' && senha == '123') {
                      print('Parabens voce logou!');
                      //Video #18
                      Navigator.of(context).pushReplacement(
                        //Navegação: chama uma tela do contexto Rotas manuais
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    } else {
                      print('Senha ou email inválidos!');
                      return;
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
