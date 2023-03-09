import 'package:flutter/material.dart';

class Gallary extends ChangeNotifier
{
  int i = 0;

  void i7 (int value)
  {
    i = value;
    notifyListeners();
  }
}