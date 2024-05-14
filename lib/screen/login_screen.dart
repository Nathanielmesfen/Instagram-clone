import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  FocusNode email_F = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(width: 96, height: 100),
            Center(
              child: Image.asset('images/logo.jpg'),
            ),
            SizedBox(height: 120),
            Container(
              height: 44,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                controller: email,
                focusNode: email_F,
                decoration: InputDecoration(
                    hintText: 'email',
                    prefixIcon: Icon(Icons.email),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
