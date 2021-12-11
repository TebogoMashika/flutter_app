import 'package:flutter/material.dart';
import 'package:telephony/telephony.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlng/latlng.dart';
import 'package:permission_handler/permission_handler.dart';

class AppBarTop extends StatefulWidget {
  const AppBarTop({Key? key}) : super(key: key);

  @override
  State<AppBarTop> createState() => _AppBarTopState();
}

class _AppBarTopState extends State<AppBarTop> {
  final Telephony telephony = Telephony.instance;

  Future<Position> locateUser() async {
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  void sendSmsFunction() async {
    LatLng _center;
    Position currentLocation;

    currentLocation = await locateUser();

    setState(() {
      _center = LatLng(currentLocation.latitude, currentLocation.accuracy);

      telephony.sendSms(
          // pending task - send to next of kin
          to: "0815058913",
          message:
              "In an Emergency. I need help. my Location: latitude ${_center.latitude} longitude: ${_center.longitude}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 350,
      //decoration: BoxDecoration(
      //  color: Colors.purple,
      //),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
            ),
            onPressed: sendSmsFunction,
            child: Container(
              width: 70,
              height: 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Text("HELP ME",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
