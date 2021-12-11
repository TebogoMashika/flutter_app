import 'package:flutter/material.dart';

class AppBarBottom extends StatelessWidget {
  const AppBarBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 350,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
            ),
            onPressed: () {},
            child: Container(
              width: 90,
              height: 90,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.lightBlue[400],
              ),
              child: Text(
                "FIND A DOCTOR ON DUTY",
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
