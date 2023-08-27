import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PageState with ChangeNotifier{
  int _currentPageIndex = 0;

  int get currentPageIndex => _currentPageIndex;

  void setCurrentIndex(int index){
    _currentPageIndex = index;
    notifyListeners();
  }
}