import 'package:flutter/material.dart';

class Switches extends StatefulWidget {

  Function(int price) onChange;

  Switches({Key? key, required this.onChange}) : super(key: key);

  List<Map<String, dynamic>> dict = [
    {'name': 'Обычное тесто', 'id':0, 'price':10},
    {'name': 'Тонкое тесто', 'id':1, 'price':11},
  ];

  @override
  _SwitchesState createState() => _SwitchesState();
}

class _SwitchesState extends State<Switches> {

  int idCurrent = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xFFeceff1), borderRadius: BorderRadius.circular(36)),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
                onTap: (){
                  widget.onChange(widget.dict[0]['price']);
                  setState(() {
                    idCurrent = 0;
                  });
                },
                child: idCurrent == 0 ? ActiveState(
                    widget.dict[0]['name']) : InActiveState(
                    widget.dict[0]['name'])),
          ),
          Expanded(
            child: GestureDetector(
                onTap: (){
                  widget.onChange(widget.dict[1]['price']);
                  setState(() {
                    idCurrent = 1;
                  });
                },
                child: idCurrent == 1 ? ActiveState(
                    widget.dict[1]['name']): InActiveState(
                    widget.dict[1]['name'])),
          ),
        ],
      ),
    );
  }
}

class ActiveState extends StatelessWidget {

  String text;
  ActiveState(this.text);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          color: const Color(0xFF0079D0),
          borderRadius: BorderRadius.circular(36)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          child: Text(text, style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}

class InActiveState extends StatelessWidget {

  String text;
  InActiveState(this.text);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Text(text, style: const TextStyle(
            color: Colors.black54,
            fontSize: 16,
            fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}