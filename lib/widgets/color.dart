import 'package:flutter/material.dart';

class ColorQ extends StatelessWidget {
  final Widget child;
  Color? color;

  ColorQ({Key? key, required this.child, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Colors.deepOrangeAccent,
      child: SafeArea(
        bottom: false,
        child: child,
      ),
    );
  }
}