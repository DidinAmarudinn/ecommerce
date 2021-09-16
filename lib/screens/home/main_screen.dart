import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/screens/home/chat_screen.dart';
import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/screens/home/profile_screen.dart';
import 'package:ecommerce/screens/home/wishlist_screen.dart';
import 'package:ecommerce/widget/custom_bottom_navbar_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static const routname = "/mainScreen";
  final int initialPage;
  const MainScreen({Key? key, required this.initialPage}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedPage = 0;
  PageController pageController = PageController(
    initialPage: 0,
  );
  @override
  void initState() {
    super.initState();
    selectedPage = widget.initialPage;
    pageController = PageController(initialPage: widget.initialPage);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectedPage == 0 ? backgroundColor1 : backgroundColor3,
      bottomNavigationBar: CustomNavBar(
        currentIndex: selectedPage,
        onTap: (index) {
          setState(() {
            selectedPage = index;
          });
          pageController.jumpToPage(selectedPage);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: secondaryColor,
        onPressed: () {},
        child: Center(
          child: Image.asset(
            iconCart,
            width: 20,
          ),
        ),
      ),
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          setState(() {
            selectedPage = index;
          });
        },
        children: [
          HomeScreen(),
          ChatScreen(),
          WishlistScreen(),
          ProfileScreen()
        ],
      ),
    );
  }
}
