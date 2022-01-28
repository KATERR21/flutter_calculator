import 'package:flutter/material.dart';

class CustomPadding extends StatelessWidget {

  EdgeInsetsGeometry? padding;
  Widget child;

  CustomPadding({Key? key, this.padding, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: padding != null ? padding!
        : const EdgeInsets.only(top: 14), child: child);
  }
}