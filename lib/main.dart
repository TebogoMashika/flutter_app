import 'package:flutter/material.dart';

import './buttons/home_button_center.dart';
import './buttons/home_button_appbar_top.dart';
import './buttons/home_button_appbar_bottom.dart';

main() {
  runApp(AetheronMedical());
}

class AetheronMedical extends StatelessWidget {
  const AetheronMedical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF73AEF5),
              Color(0xFF61A4F1),
              Color(0xFF478DE0),
              Color(0xFF398AE5),
            ],
            stops: [0.1, 0.4, 0.7, 0.9],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // help me container
            AppBarTop(),
            // login, register and image main container
            CenterButton(),
            AppBarBottom(),
          ],
        ),
      ),
    ));
  }
}
