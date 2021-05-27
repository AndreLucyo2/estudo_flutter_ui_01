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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Campo de texto:
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
