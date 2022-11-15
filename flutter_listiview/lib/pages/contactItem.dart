// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_listiview/model/ContactModel.dart';

class ContactItem extends StatelessWidget {
  final ContactModel _contact;
  const ContactItem(this._contact, {super.key});

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      leading: new CircleAvatar(child: new Text(_contact.name[0]),),
      title: new Text(_contact.name),
      subtitle: new Text(_contact.email),
    );
  }
}