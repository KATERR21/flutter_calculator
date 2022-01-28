import 'package:flutter/material.dart';

class Header extends StatelessWidget {

  String text;
  Widget child;

  Header({Key? key, required this.text, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 5),
            child: Text(text, style:
            Theme.of(context).textTheme.bodyText2?.copyWith(fontWeight:
            FontWeight.w400, fontSize: 20, color: Colors.black)),
          ),
          child
        ],
      ),
    );
  }
}