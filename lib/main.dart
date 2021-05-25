import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(Container(
    child: Center(
      child: Text(
        'Texto na tela do cellular',
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.white, fontSize: 45.0),
      ),
    ),
  ));
}
