import 'package:defi_app/pages/home.dart';
import 'package:defi_app/pages/login.dart';
import 'package:defi_app/pages/registrationPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Home_Page();
          } else {
            return Login_Page();
          }
        },
      ),
    );
  }
}
