import 'package:flutter/material.dart';

class SelectedChipController extends ChangeNotifier {
  SelectedChipController();

  factory SelectedChipController.create() => SelectedChipController();

  int selectedIndex = 0;
  String selectedCategory = '';

  void selectChip(int index, String category) {
    selectedIndex = index;
    selectedCategory = category;
    notifyListeners();
  }
}
