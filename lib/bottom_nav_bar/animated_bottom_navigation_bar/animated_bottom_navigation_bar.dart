import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../view/account.dart';
import '../../view/home.dart';
import '../../view/search.dart';
import '../../view/shopping_cart.dart';

// the library name
// animated_bottom_navigation_bar
class CustomAnimatedBottomNavigationBar extends StatefulWidget {
  const CustomAnimatedBottomNavigationBar({super.key});

  @override
  State<CustomAnimatedBottomNavigationBar> createState() =>
      CustomAnimatedBottomNavigationBarState();
}

// Pages.length = button.length
class CustomAnimatedBottomNavigationBarState
    extends State<CustomAnimatedBottomNavigationBar> {
  int bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const [
          // Your Pages is here
          HomeView(),
          ShoppingCart(),
          SearchView(),
          AccountView(),
        ][bottomNavIndex],
        floatingActionButton: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: FloatingActionButton(
            backgroundColor: const Color(0xFF6D9886),
            onPressed: () {},
            child: const Icon(
              Icons.handyman_outlined,
              color: Colors.white,
            ),
            //params
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: const [
            // your button is here
            Icons.home,
            Icons.favorite,
            Icons.search,
            Icons.person,
          ],
          inactiveColor: const Color(0xFFB3B3B3),
          borderColor: const Color(0xFF6D9886),
          splashColor: const Color(0xFF6D9886),
          activeColor: const Color(0xFF6D9886),
          activeIndex: bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) => setState(() => bottomNavIndex = index),
          //other params
        ),
      ),
    );
  }
}
