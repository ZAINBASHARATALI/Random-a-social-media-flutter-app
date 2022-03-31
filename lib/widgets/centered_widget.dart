import 'package:flutter/material.dart';
import 'package:ltp/providers/navbar.dart';
import 'package:provider/provider.dart';

class CustomCenterWidget extends StatelessWidget {
  const CustomCenterWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final navBarProvider = Provider.of<NavBarProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: navBarProvider.getCenteredTopText(),
    );
  }
}
