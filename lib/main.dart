import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(AppWidget());
}

//Video #6 https://youtu.be/4CCW_cdVBQg
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Container(
      child: Center(
        child: Text(
          'André teste',
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 45.0),
        ),
      ),
    );
  }
}
