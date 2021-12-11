import 'package:flutter/material.dart';

import '/model/register_user.dart';

class FlipBackView extends StatefulWidget {
  @override
  State<FlipBackView> createState() => _FlipBackViewState();
}

class _FlipBackViewState extends State<FlipBackView> {
  late String firstNameInput;

  late String surnameInput;

  late String idNumberInput;

  @override
  Widget build(BuildContext context) {
    double rating = 0;
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: BoxDecoration(
          color: Colors.greenAccent,
        ),
        child: Column(
          children: [
            Container(
              height: 400,
              width: 400,
              padding: EdgeInsets.all(50),
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'First Name*',
                      contentPadding: EdgeInsets.only(top: 14.0),
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    onChanged: (inputValue) => firstNameInput = inputValue,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Surname*',
                        contentPadding: EdgeInsets.only(top: 14.0)),
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    onChanged: (inputValue) => surnameInput = inputValue,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'ID Number*',
                        contentPadding: EdgeInsets.only(top: 14.0)),
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    onChanged: (inputValue) {
                      idNumberInput = inputValue;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      RegisterUser(firstNameInput, surnameInput, idNumberInput);
                    },
                    child: Text("Next"),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  //color: Colors.amber,
                  ),
              child: Slider(
                value: rating,
                onChanged: (newRating) {
                  setState(() => rating = newRating);
                },
                min: 0,
                max: 100,
              ),
            )
          ],
        ),
      )),
    );
  }
}
