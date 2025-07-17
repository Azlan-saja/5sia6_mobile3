import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.all(14.0),
          child: Column(
            children: [
              // 1. Gambar,
              // 2. Judul,
              Text(
                "Notes App",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // 3. Input Username,
              TextFormField(),
              // 4. Input Password,
              // 5. Tombol Login,
              // 6. Teks Buat Akun,
            ],
          ),
        ),
      ),
    );
  }
}
