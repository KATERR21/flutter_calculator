import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void showInSnackBar(BuildContext context, String value) {
  final snackBar = SnackBar(content: Text(value));
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}