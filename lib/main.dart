
import 'package:flutter/material.dart';
import 'package:spotifyclone2/paginas/principal_app.dart';

void main() {
  runApp( MyCloneSpotify());
}
//sale con las StatelessWidget
class MyCloneSpotify extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //sale con debug
      home: PrincipalApp(),
    );
  }
}


