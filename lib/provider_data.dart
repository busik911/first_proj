import 'package:flutter/material.dart';


class Data with ChangeNotifier {

  String myCategory='Business news';

  void changeStringMethod(String newString) {
    myCategory = newString;
    notifyListeners();

  }

}

