import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_1/auth/auth_screen.dart';
// import 'package:instagram_clone_1/screen/home.dart';
import 'package:instagram_clone_1/widgets/navigation.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const Navigation_Screen();
        } else {
          return const AuthPage();
        }
      },
    ));
  }
}
