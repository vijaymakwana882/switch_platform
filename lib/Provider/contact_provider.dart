import 'package:flutter/material.dart';
import '../Model/contact_storage.dart';

class Contact_provider extends ChangeNotifier {
  List<ContactStorage> list = [];

  void addcontact(ContactStorage contactStorage) {
    list.add(contactStorage);
    notifyListeners();
  }
}
