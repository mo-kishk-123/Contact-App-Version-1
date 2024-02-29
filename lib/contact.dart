import 'package:flutter/material.dart';

class Contact extends StatelessWidget {

  String name;
  String phone;

  Contact({super.key,
    required this.name ,
    required this.phone
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
      child: Container(
        width: double.infinity,
        height: 110,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5,),
                  Text("Name : $name"
                      , style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w400
                      )),
                  SizedBox(height: 10),
                  Text("Phone : $phone"
                      , style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w400
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
