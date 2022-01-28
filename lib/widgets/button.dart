import 'package:flutter/material.dart';
import 'package:flutter_calculator/widgets/utils.dart';

class Button extends StatelessWidget {

  Function()? action;
  String text;
  bool enabled;
  String enabledText;
  bool error;

  Button({Key? key, this.text = '',
    this.action,
    this.enabled = true,
    this.enabledText = '',
    this.error = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: enabled ? action : () => showInSnackBar(context, enabledText),
      child: UnconstrainedBox(
        child: Container(
          decoration: BoxDecoration(
            color: enabled ? const Color(0xFF0079D0) : Colors.grey,
            borderRadius: BorderRadius.circular(36),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 50),
            child: Center(child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text, style: const TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),),
                error ? const Icon(Icons.error) : Container()
              ],
            )),
          ),
        ),
      ),
    );
  }
}