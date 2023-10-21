import 'package:flutter/material.dart';
import 'package:inno_shopp/src/screen/main_page/cart_page/cart.dart';
import 'package:inno_shopp/src/screen/main_page/home/home.dart';
import 'package:inno_shopp/src/screen/main_page/profile_page/profile_page.dart';
import 'package:inno_shopp/src/screen/main_page/setting_page/setting.dart';
import 'package:inno_shopp/src/screen/main_page/src_page/search.dart';
import 'package:inno_shopp/src/screen/main_page/white-list_page/white_list_page.dart';
import 'package:inno_shopp/src/widget/colors.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController controller;
    controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [
        HomePage(),
        WhiteListPage(),
        CartPage(),
        SearchPage(),
        AccountPage(),

      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home_filled),
          title: ("Home"),
          activeColorPrimary: BrandColors.colorbutton,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.favorite_border),
          title: ("White List"),
          activeColorPrimary: BrandColors.colorbutton,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.shopping_cart_outlined, color: Colors.white),
          activeColorPrimary: BrandColors.colorbutton,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.search),
          title: ("Search"),
          activeColorPrimary: BrandColors.colorbutton,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person),
          title: ("Profile"),
          activeColorPrimary: BrandColors.colorbutton,
          inactiveColorPrimary: Colors.grey,
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,

      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
      true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
      true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
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
      NavBarStyle.style15,

      // Choose the nav bar style with this property.
    );
  }
}