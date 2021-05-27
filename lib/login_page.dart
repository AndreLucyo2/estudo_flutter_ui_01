import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
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
                  print(text);
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
                  print(text);
                },
              ),

              //Separador
              Container(height: 20),

              //Criar um botão
              ElevatedButton(
                child: Text('Entrar'),
                onPressed: () {
                  print('Clicou!');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
