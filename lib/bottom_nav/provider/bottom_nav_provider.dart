import 'package:flutter/foundation.dart';

class BottomNavProvider with ChangeNotifier {
  // Variable for storing the current state of the bottom navigation.
  int _currentIndex = 0;

  // Getter for the current state of the bottom navigation.
  int get currentIndex => _currentIndex;

  // Function to change the current state of the bottom navigation.
  void changeIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}