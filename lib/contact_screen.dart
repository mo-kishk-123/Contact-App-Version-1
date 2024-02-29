import 'package:contact_screen/castome_button.dart';
import 'package:contact_screen/contact.dart';
import 'package:contact_screen/caustom_field.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  static const String routeName = "Contact";

  ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController name = TextEditingController();

  TextEditingController phone = TextEditingController();

  List<Widget> contacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Container(
            alignment: Alignment.center, child: Text("Contacts Screen")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Field(
                controller: name,
                hint: "Enter Name Here",
                icon: Icon(Icons.edit, color: Colors.blueAccent),
                type: TextInputType.text,
              ),
            ),
            Field(
              controller: phone,
              hint: "Enter Phone Here",
              icon: Icon(Icons.call, color: Colors.blueAccent),
              type: TextInputType.phone,
            ),
            Row(
              children: [
                Visibility(
                  visible: contacts.length < 5,
                  child: Button(press: add,
                  color: Colors.blueAccent,
                  type: "Add"),
                ),
                Visibility(
                  visible: contacts.isNotEmpty,
                  child: Button(press: delete,
                  type: "Delete",
                  color: Colors.redAccent),
                ),
              ],
            ),
            for (Widget item in contacts) item
          ],
        ),
      ),
    );
  }

  void add() {
    if (name.text.isNotEmpty && phone.text.isNotEmpty) {
      setState(() {
        contacts.add(Contact(name: name.text, phone: phone.text));
        name.clear();
        phone.clear();
      });
    }
  }

  void delete() {
    setState(() {
      contacts.removeLast();
    });
  }
}
