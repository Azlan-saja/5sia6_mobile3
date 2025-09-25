import 'package:aplikasi_5sia6_mobile3/controllers/login_controller.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(14.0),
            child: Form(
              key: loginController.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // 1. Gambar,
                  Image.asset(
                    "lib/assets/images/login.png",
                    height: 300,
                  ),
                  // 2. Judul,
                  SizedBox(height: 12),
                  Text(
                    "Notes App",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // 3. Input Username,
                  SizedBox(height: 12),
                  TextFormField(
                    validator: (value) =>
                        loginController.cekValidasi(value, label: 'Username'),
                    controller: loginController.usernameController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "Username",
                      prefixIcon: Icon(Icons.person),
                      border: InputBorder.none,
                      fillColor: Colors.grey.withAlpha(40),
                      filled: true,
                      contentPadding: EdgeInsets.only(top: 13),
                    ),
                  ),
                  // 4. Input Password,
                  SizedBox(height: 12),
                  TextFormField(
                    validator: (value) =>
                        loginController.cekValidasi(value, label: 'Password'),
                    controller: loginController.passwordController,
                    obscureText: !loginController.isVisible,
                    textInputAction: TextInputAction.done,
                    onFieldSubmitted: (_) =>
                        loginController.prosesLogin(context),
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.key),
                      suffixIcon: InkWell(
                        onTap: () {
                          loginController.showPassword();
                          setState(() {});
                        },
                        child: Icon(
                          loginController.isVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                      border: InputBorder.none,
                      fillColor: Colors.grey.withAlpha(40),
                      filled: true,
                      contentPadding: EdgeInsets.only(top: 13),
                    ),
                  ),
                  // 5. Tombol Login,
                  SizedBox(height: 12),
                  FilledButton.icon(
                    onPressed: () {
                      loginController.prosesLogin(context);
                    },
                    label: Text("Login"),
                    icon: Icon(Icons.login),
                  ),
                  // 6. Teks Buat Akun,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {},
                        child: const Text("Create account"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
