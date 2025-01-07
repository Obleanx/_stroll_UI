import 'package:flutter/material.dart';

class TimeOptionProvider with ChangeNotifier {
  String _selectedOption = 'The peace in the mornings';
  int _selectedIndex = 0;

  String get selectedOption => _selectedOption;
  int get selectedIndex => _selectedIndex;

  void updateSelection(String option, int index) {
    _selectedOption = option;
    _selectedIndex = index;
    notifyListeners();
  }
}
