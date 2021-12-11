import 'package:flutter/material.dart';

import '../home_button_appbar_bottom.dart';
import '../home_button_appbar_top.dart';
import './custome_route.dart';
import './flip_button_back.dart';

class RegisterUser extends StatefulWidget {
  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: 800,
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
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // container for the top section
              Container(
                  height: 100,
                  width: 360,
                  child: Column(
                    children: [
                      AppBarTop(),
                    ],
                  )),

              // container for the middle section
              Container(
                height: 450,
                width: 450,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(120, 120),
                          shape: CircleBorder(),
                          primary: Colors.greenAccent,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            CustomePageRoute(child: FlipBackView()),
                          );
                        },
                        child: Text("PATIENT"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(120, 120),
                          shape: CircleBorder(),
                          primary: Colors.greenAccent,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            CustomePageRoute(child: FlipBackView()),
                          );
                        },
                        child: Text("DOCTOR"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(120, 120),
                          shape: CircleBorder(),
                          primary: Colors.greenAccent,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            CustomePageRoute(child: FlipBackView()),
                          );
                        },
                        child: Text("EMERGENCY"),
                      ),
                    ),
                  ],
                ),
              ),
              //ScrollMenu(),

              Container(
                  height: 100,
                  width: 360,
                  //decoration: BoxDecoration(color: Colors.amber),
                  child: Column(
                    children: [
                      AppBarBottom(),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
