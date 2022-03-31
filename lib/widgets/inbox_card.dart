import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ltp/models/usermodel.dart';
import 'package:velocity_x/velocity_x.dart';

class InboxCard extends StatelessWidget {
  const InboxCard({Key? key, required this.userinbox}) : super(key: key);
  final UserModel userinbox;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => Get.toNamed('/msgspage', arguments: userinbox)),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        height: Get.height * 0.12,
        width: Get.width,
        color: Colors.white,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 15),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  userinbox.profileImage,
                ),
                radius: 35,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  userinbox.name.text
                      .minFontSize(20)
                      .fontWeight(FontWeight.w700)
                      .make(),
                  const Divider(
                    height: 5,
                  ),
                  userinbox.bio.text.color(Colors.blue).minFontSize(15).make(),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: 'Time'.text.minFontSize(16).maxFontSize(16).make(),
            ),
          ],
        ),
      ),
    );
  }
}
