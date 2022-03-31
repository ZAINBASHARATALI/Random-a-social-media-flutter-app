import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ltp/utils/constants.dart';
import 'package:velocity_x/velocity_x.dart';

class NavBarProvider with ChangeNotifier {
  // ignore: prefer_final_fields
  int _navBarIndex = 0;

  int get nBarindex {
    return _navBarIndex;
  }

  void changeNavBarIndex(int value) {
    _navBarIndex = value;
    notifyListeners();
  }

  Widget getCenteredTopText() {
    switch (_navBarIndex) {
      case 0:
        return 'Home'
            .text
            .color(ktxtwhiteColor)
            .minFontSize(20)
            .fontWeight(FontWeight.w600)
            .make();
      case 1:
        // return Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
        //   child: TextFormField(
        //     decoration: const InputDecoration(
        //       border: OutlineInputBorder(
        //         gapPadding: 10,
        //       ),
        //     ),
        //   ),
        // );
        return Container(
          margin: const EdgeInsets.only(top: 10, bottom: 0),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          decoration: BoxDecoration(
            border:
                Border.all(width: 2.2, color: Colors.white.withOpacity(0.8)),
            borderRadius: BorderRadius.circular(8),
          ),
          height: Get.height * 0.05,
          child: const Center(
            child: TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  hintText: 'Search for Anything',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 231, 228, 228),
                  ),
                  border: InputBorder.none),
            ),
          ),
        );
      case 2:
        return 'Notifications'
            .text
            .color(Colors.white)
            .minFontSize(20)
            .fontWeight(FontWeight.w600)
            .make();
      default:
        return 'Inbox'
            .text
            .color(Colors.white)
            .minFontSize(20)
            .fontWeight(FontWeight.w600)
            .make();
    }
  }
}
