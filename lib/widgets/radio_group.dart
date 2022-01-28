import 'package:flutter/material.dart';

class RadioGroupState extends StatefulWidget {
  Function(int prise) onChange;

  RadioGroupState({Key? key, required this.onChange}) : super(key: key);

  List<Map<String, dynamic>> dict = [
    {"name": "Острый", "id":0, "price":15},
    {"name": "Кисло-сладкий", "id":1, "price":20},
    {"name": "Сырный", "id":2, "price":25},
  ];

  @override
  _RadioGroupState createState() => _RadioGroupState();
}

class _RadioGroupState extends State<RadioGroupState> {
  int idCurrent = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.dict.map((e) => Column(
        children: [
          ListTile(
            title: Text(e["name"]),
            trailing: Radio(
              activeColor: Colors.green,
              onChanged: (price) {
                widget.onChange(e["price"]);
                setState(() {
                  idCurrent = e["id"];
                });
              }, groupValue: e["id"], value: idCurrent,),
          ),
          const Divider()
        ],
      )).toList(),
    );
  }
}