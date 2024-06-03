import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone_1/widgets/post_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: SizedBox(
            width: 105.2,
            height: 28.h,
            child: Image.asset('images/instagram.jpg'),
          ),
          leading: Image.asset('images/camera.jpg'),
          actions: [
            const Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
            Container(
              child: Image.asset('images/messenger.png'),
              width: 38.w,
              height: 18.h,
            ),
          ],
          backgroundColor: Color(0xffFAFAFA),
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return PostWidget();
                },
                childCount: 8,
              ),
            ),
          ],
        ));
  }
}
