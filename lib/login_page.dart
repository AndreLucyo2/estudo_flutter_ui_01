import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Guarda os valores dos campos
  String email = '';
  String senha = '';

  //Video #23 separado Body do Scaffold em um metodo
  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        //pegar as dimeções ta tela:
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        child: Padding(
          //adicionado Padding
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //Separador
              Container(height: 40),

              //Video #21 Inserindo imagens da internet
              Container(
                width: 100,
                height: 100,
                //Video #22 - pegando a imagem de forma local
                child: Image.asset('assets/images/logo.jpg'),
              ),

              //Separador
              Container(height: 30),
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
                    Navigator.of(context).pushNamed('/home');
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Video #23 Uso do Stack - sbrepoe widget
      body: Stack(children: [
        SizedBox(
            //definir a imagem na largura tora de tela
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/images/background.jpg',
                //ajusta imagem na altura tela
                fit: BoxFit.cover)),
        //Cria uma mascara para escurecer a imagem:
        Container(color: Colors.black.withOpacity(0.5)),
        _body(),
      ]),
    );
  }
}
