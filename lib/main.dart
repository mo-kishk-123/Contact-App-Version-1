import 'package:contact_screen/contact_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: ContactScreen.routeName,
      routes: {
        ContactScreen.routeName: (context) => ContactScreen(),
      },
    );
  }
}
