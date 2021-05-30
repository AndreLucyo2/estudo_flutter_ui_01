import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  //Video #22 - pegando a imagem de forma local
                  child: Image.asset(
                    'assets/images/logo.jpg',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //Separador
              Container(height: 30),

              //video #24 Card
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 20, bottom: 20),
                  child: Column(
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
                        style: ButtonStyle(
                          //Cor de fundo do botão
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        //Evento ao pressionar:
                        onPressed: () {
                          //Faz a validação do login:
                          if (email.isEmpty && senha.isEmpty) {
                            print('Campo senha e email nao podem ser vazios!');
                            return;
                          }
                          //Sucesso!
                          if (email == 'teste@gmail.com' && senha == '123') {
                            print('Parabens voce logou!');
                            //Video #19
                            Navigator.of(context).pushNamed('/home');
                          } else {
                            print('Senha ou email inválidos!');
                            return;
                          }
                        },
                        //botão estendido até a largura do seu widget pai
                        child: Container(
                            width: double.infinity,
                            //Texto alinhado ao centro
                            child: Text('Entrar', textAlign: TextAlign.center)),
                      ),
                    ],
                  ),
                ),
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
        Container(color: Colors.blue.withOpacity(0.50)),
        _body(),
      ]),
    );
  }
}
