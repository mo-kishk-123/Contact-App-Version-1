import 'package:flutter/material.dart';

class Field extends StatelessWidget {

  TextEditingController controller;
  String hint;
  Icon icon;
  TextInputType type;

  Field({super.key,
    required this.controller,
    required this.hint,
    required this.icon,
    required this.type
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15, top: 10, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding:
              const EdgeInsets.only(bottom: 8, top: 10, right: 10, left: 12),
          child: TextField(
            keyboardType: type,
            controller: controller,
            maxLines: 1,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
              suffixIcon: icon,
              border: UnderlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
