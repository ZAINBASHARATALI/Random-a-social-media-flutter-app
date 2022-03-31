import 'package:flutter/material.dart';
import 'package:ltp/providers/navbar.dart';
import 'package:ltp/screens/main/home.dart';

import 'package:provider/provider.dart';

import '../screens/main/inbox.dart';
import '../screens/main/notifications.dart';
import '../screens/main/search.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navbarProvider = Provider.of<NavBarProvider>(context);
    switch (navbarProvider.nBarindex) {
      case 0:
        return const HomePage();
      case 1:
        return const SearchPage();
      case 2:
        return const NotificationsPage();
      default:
        return const InboxPage();
    }
  }
}
