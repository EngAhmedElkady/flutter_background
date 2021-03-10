import 'package:flutter/material.dart';

class Acount {
  String _name;
  String _email;
  String _password;
  int _id;

  Acount(this._name, this._email, this._password);
  Acount.fromdb(Map<String, dynamic> data) {
    _name = data['name'];
    _email = data['email'];
    _password = data['password'];
    _id = data['id'];
  }

  Map<String, dynamic> to_db() {
    return {
      'name': _name,
      'email': _email,
      'password': _password,
    };
  }

  String get username => _name;
  String get email => _email;
  String get password => _password;
  int get number => _id;
}
