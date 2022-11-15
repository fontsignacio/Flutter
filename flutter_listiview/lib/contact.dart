import 'package:flutter/material.dart';
import 'package:flutter_listiview/model/ContactModel.dart';
import 'package:flutter_listiview/pages/contactList.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  _buildList(){
    return <ContactModel>[
      const ContactModel(name: "Rodrigo Morales", email: "rodgrigomorales@flutter.com"),
      const ContactModel(name: "Duki", email: "duki@flutter.com"),
      const ContactModel(name: "Messi", email: "messi@flutter.com"),
      const ContactModel(name: "Diego Armando Maradona", email: "diego.maradona@flutter.com"),
      const ContactModel(name: "Joaquin Sarmiento", email: "joaquin.sarmiento@flutter.com"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContactList(_buildList()),
    );
  }
}