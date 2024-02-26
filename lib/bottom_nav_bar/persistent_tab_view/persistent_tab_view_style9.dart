import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../view/account.dart';
import '../../view/home.dart';
import '../../view/search.dart';
import '../../view/shopping_cart.dart';
//  persistent_bottom_nav_bar: ^5.0.2

class CustomPersistentBottomNavBarStyle9 extends StatelessWidget {
  const CustomPersistentBottomNavBarStyle9({super.key});

  @override
  Widget build(BuildContext context) {
    PersistentTabController controller = PersistentTabController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: PersistentTabView(
        context,
        controller: controller,
        screens: const [
          HomeView(),
          SearchView(),
          ShoppingCart(),
          AccountView(),
        ],
        items: [
          PersistentBottomNavBarItem(
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(
              Icons.shopping_bag,
              color: Colors.white,
            ),
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ],
        confineInSafeArea: true,
        backgroundColor: Colors.black54, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset: true,
        // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: const NavBarDecoration(
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),

        navBarStyle:
            NavBarStyle.style9, // Choose the nav bar style with this property.
      ),
    );
  }
}
