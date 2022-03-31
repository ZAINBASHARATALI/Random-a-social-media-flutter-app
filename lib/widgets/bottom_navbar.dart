import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ltp/providers/navbar.dart';
import 'package:ltp/utils/constants.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final navbarProvider = Provider.of<NavBarProvider>(context);
    return AnimatedBottomNavigationBar(
        activeColor: Colors.white,
        inactiveColor: Colors.cyanAccent.withOpacity(0.7),
        backgroundColor: kmainColor,
        elevation: 5,
        iconSize: 30,
        icons: const [
          Icons.home_filled,
          Icons.search_sharp,
          Icons.notifications,
          Icons.inbox,
        ],
        activeIndex: navbarProvider.nBarindex,
        gapLocation: GapLocation.end,
        leftCornerRadius: 15,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (val) {
          navbarProvider.changeNavBarIndex(val);
        });
  }
}
