import 'package:flutter/cupertino.dart';

class Person extends ChangeNotifier{
  String? _FirstName;

  String? get FirstName => _FirstName;

  set FirstName(String? FirstName) {
    _FirstName = FirstName;
    notifyListeners();
  }
  String? _LastName;

  String? get LastName => _LastName;

  set LastName(String? LastName) {
    _LastName = LastName;
    notifyListeners();
  }

  String Write(){
    return "${this._FirstName}, ${this._LastName}";
    notifyListeners();
  }

}