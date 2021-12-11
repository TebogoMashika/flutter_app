import 'package:flutter/material.dart';

class CustomePageRoute extends PageRouteBuilder {
  final Widget child;

  CustomePageRoute({Key? key, required this.child})
      : super(
            transitionDuration: Duration(seconds: 1),
            pageBuilder: (context, animation, secondaryAnimation) => child);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      ScaleTransition(
        scale: animation,
        child: child,
      );
}
