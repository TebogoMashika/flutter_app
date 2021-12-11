import 'package:flutter/material.dart';

import './button_functions/register_button.dart';

class CenterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370,
      width: 350,
      //decoration: BoxDecoration(
      //  color: Colors.red,
      //),
      child: Column(
        children: [
          // login and register box
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              //color: Colors.lightBlue[200],
              shape: BoxShape.circle,
            ),

            // login and register buttons
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {},
                  child: Text(
                    "LOG IN",
                    style: TextStyle(
                        color: Colors.black,
                        //fontSize: 34.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterUser()),
                    );
                  },
                  child: Text(
                    "REGISTER",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
          // image
          Container(
            margin: EdgeInsets.all(10),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.lightBlue[400],
            ),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  child: Card(
                    child:
                        Image.asset('assets/images/home.PNG', fit: BoxFit.fill),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
