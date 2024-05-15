import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatefulWidget {
  final VoidCallback show;
  SignupScreen(this.show{super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final email = TextEditingController();
  FocusNode email_F = FocusNode();
  final password = TextEditingController();
  FocusNode password_F = FocusNode();
  final bio = TextEditingController();
  FocusNode bio_F = FocusNode();
  final username = TextEditingController();
  FocusNode username_F = FocusNode();
  final PasswordConfirm = TextEditingController();
  FocusNode PasswordConfirm_F = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(width: 96, height: 30),
            Center(
              child: Image.asset('images/logo.jpg'),
            ),
            SizedBox(height: 60.h),
            Center(
              child: CircleAvatar(
                radius: 32.r,
                backgroundColor: Colors.grey.shade200,
                backgroundImage: AssetImage('images/person.png'),
                )),
            SizedBox(height: 120),
            TextField(email,Icons.email,'Email',email_F),
            SizedBox(height: 15.h),
            TextField(username,Icons.person,'Username',username_F),
            SizedBox(height: 15.h),
            TextField(bio,Icons.abc,'bio',bio_F),
            SizedBox(height: 15.h),
            TextField(password,Icons.lock,'Password',password_F),
            SizedBox(height: 15.h),
            TextField(PasswordConfirm,Icons.lock,'PasswordConfirm',PasswordConfirm_F),               
            SizedBox(height: 20.h),
            Login(),            
            SizedBox(height: 10.h),
            Have()
          ],
        ),
      ),
    );
  }

  Widget Have() {
    return Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Don't have account? ",
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.grey,
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.show,
                    child: Text(
                    "Login ",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
                  )
                  ),
                  ),
                ],
              ),
            );
  }

  Padding Login() {
    return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 44.h,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10.r)
                ),
                child: Text('Sign up', style: TextStyle(fontSize: 23.sp,color: Colors.white, fontWeight: FontWeight.bold),),
              ),
            );
  }

  Widget Forgot() {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.w),
              child: Text('Forgot your password',style: TextStyle(fontSize: 13.sp,color: Colors.blue, fontWeight: FontWeight.bold),),
            );
  }

  Widget TextField(TextEditingController controller, IconData icon, String type,
      FocusNode focusNode) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.2),
      child: Container(
        height: 44,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );


      child: TextField(
        style: TextStyle(fontSize: 18, color: Colors.black),
        controller: controller,
        focusNode: focusNode,
        decoration: InputDecoration(
            hintText: type,
            prefixIcon: Icon[
              icon,
              color: focusNode.hasFocus? Colors.black: Colors.grey,
            ],
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.black, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide(color: Colors.black, width: 2.w),
            )
        ),
      )
    );
  }
}
