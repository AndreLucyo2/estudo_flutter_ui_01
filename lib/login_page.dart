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
                //Video #21 Inserindo imagens da internet
                Image.network(
                    'https://t3.ftcdn.net/jpg/02/42/82/76/240_F_242827652_Gj3IL5w6gdufgSOESH7qVaYXN8ocQ6sX.jpg'),

                //Separador
                Container(height: 20),
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
                      //Video #19
                      Navigator.of(context).pushReplacementNamed('/home');
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
