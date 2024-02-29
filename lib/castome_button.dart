import 'package:flutter/material.dart';

typedef onPress = void Function();

class Button extends StatelessWidget {
  onPress press;
  Color color;
  String type;

  Button(
      {super.key,
      required this.press,
      required this.type,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8, top: 10, right: 12, left: 12),
        child: ElevatedButton(
          onPressed: press,
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shadowColor: Colors.transparent),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              type,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
