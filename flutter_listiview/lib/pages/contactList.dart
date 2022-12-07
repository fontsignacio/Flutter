// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_listiview/model/ContactModel.dart';
import 'package:flutter_listiview/pages/contactItem.dart';

class ContactList extends StatelessWidget {
  final List<ContactModel> _contacts; 
  const ContactList(this._contacts, {super.key});
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _buildContactList()
    );
  }

  List<ContactItem>_buildContactList(){
    return _contacts
      .map((contact) => ContactItem(contact))
      .toList();
  }    
}