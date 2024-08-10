import 'package:flutter/material.dart';

class LoginScreenProvider with ChangeNotifier {
  // Below variable is for the visibility of the password.
  bool isPasswordVisible = true;
  String password = '';
  // Below function is for changing the visibility
  // of login password.
  changePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }

  // Update password and control eye icon visibility
  // If the user provide at least one letter, then only
  // the eye button will be visible.
  void updatePassword(String newPassword) {
    password = newPassword;
    notifyListeners();
  }

  // To determine if the eye icon should be visible
  bool get shouldShowVisibilityIcon => password.isNotEmpty;
}
