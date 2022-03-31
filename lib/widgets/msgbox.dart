import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ltp/models/postmodel.dart';
import 'package:ltp/utils/constants.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: must_be_immutable
class MsgBox extends StatelessWidget {
  MsgBox({Key? key, required this.name, required this.msg}) : super(key: key);
  String name;
  String msg;
  @override
  Widget build(BuildContext context) {
    final PostModel mymodel = PostModel();
    return Row(
      children: [
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            color: kaccentColor,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
          child: msg.text
              .overflow(TextOverflow.ellipsis)
              .maxLines(100)
              .align(TextAlign.justify)
              .color(Colors.white)
              .fontWeight(FontWeight.w400)
              .minFontSize(Get.textScaleFactor)
              .make(),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 5.0,
          ),
          child: CircleAvatar(
            backgroundImage: NetworkImage(mymodel.user.profileImage),
          ),
        ),
      ],
    );
  }
}
