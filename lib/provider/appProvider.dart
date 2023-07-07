import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier{

  late String _homeLayoutLabel = 'HOME';

  get homeLayoutLabel => _homeLayoutLabel;

  void setHomeLayoutLabel(String value){
    _homeLayoutLabel = value;
    notifyListeners();
  }

}