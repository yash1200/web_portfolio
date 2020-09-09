import 'package:flutter/material.dart';
import 'package:resumeflutter/values/values.dart';

class AppProvider with ChangeNotifier {
  int _currentIndex = 0;
  double _elevation = 0;
  Color _backgroundColor = defaultLight;

  int get currentIndex => _currentIndex;

  double get elevation => _elevation;

  Color get backgroundColor => _backgroundColor;

  void setCurrentIndex(int value) {
    _currentIndex = value;
    notifyListeners();
  }

  void setElevation(double elevation) {
    _elevation = elevation;
    notifyListeners();
  }

  void setBackgroundColor(Color backgroundColor) {
    _backgroundColor = backgroundColor;
    notifyListeners();
  }
}
