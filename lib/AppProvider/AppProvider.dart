import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  setCurrentIndex(int value) {
    _currentIndex = value;
    notifyListeners();
  }
}
