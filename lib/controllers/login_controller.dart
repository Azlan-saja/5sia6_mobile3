import 'package:flutter/material.dart';

class LoginController {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool isVisible = false;
  final formKey = GlobalKey<FormState>();

  showPassword() {
    isVisible = !isVisible;
  }

  String? cekValidasi(String? value) {
    if (value!.isEmpty) {
      return 'Title wajib diisi';
    }
    return null;
  }
}
