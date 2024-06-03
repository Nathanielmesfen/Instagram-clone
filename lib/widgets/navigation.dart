import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_clone_1/screen/add_post.screen.dart';
import 'package:instagram_clone_1/screen/add_reels_screen.dart';
import 'package:instagram_clone_1/screen/add_screen.dart';
import 'package:instagram_clone_1/screen/explor_screen.dart';
import 'package:instagram_clone_1/screen/home.dart';
import 'package:instagram_clone_1/screen/profile_screen.dart';
import 'package:instagram_clone_1/screen/reelsScreen.dart';

class Navigation_Screen extends StatefulWidget {
  const Navigation_Screen({super.key});

  @override
  State<Navigation_Screen> createState() => _Navigation_ScreenState();
}

int _currentIndex = 0;

class _Navigation_ScreenState extends State<Navigation_Screen> {
  late PageController pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  onPageChanged(int page) {
    setState(() {
      _currentIndex = page;
    });
  }

  navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
            child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: navigationTapped,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/instagram-reels-icon.png',
                height: 20,
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
        )),
        body: PageView(
          controller: pageController,
          onPageChanged: onPageChanged,
          children: const [
            HomeScreen(),
            ExplorScreen(),
            AddScreen(),
            ReelScreen(),
            AddReelsScreen(),
            AddPostScreen(),
            ProfileScreen(),
          ],
        ));
  }
}
