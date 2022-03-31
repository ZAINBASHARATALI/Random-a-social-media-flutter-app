import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ltp/utils/constants.dart';

// ignore: must_be_immutable
class CustomTextInputWidget extends StatelessWidget {
  CustomTextInputWidget({
    Key? key,
    required this.msgController,
    required this.performFunc,
  }) : super(key: key);
  final TextEditingController msgController;
  VoidCallback performFunc;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 5, bottom: 13, left: 10),
          margin: const EdgeInsets.only(left: 8),
          height: Get.height * 0.06,
          width: Get.width * 0.8,
          decoration: BoxDecoration(
            //color: Colors.red,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: kMainColor),
          ),
          child: TextField(
            cursorColor: kaccentColor,
            //autofocus: true,
            controller: msgController,
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
        InkWell(
          onTap: performFunc,
          child: const CircleAvatar(
            radius: 23,
            child: Icon(
              Icons.send,
              size: 28,
            ),
          ),
        ),
      ],
    );
  }
}
