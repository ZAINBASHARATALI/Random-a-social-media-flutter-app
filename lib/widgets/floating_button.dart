import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ltp/providers/posts.dart';
import 'package:ltp/utils/constants.dart';
import 'package:provider/provider.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final postProvider = Provider.of<PostsProvider>(context);
    return FloatingActionButton(
      backgroundColor: kMainColor,
      onPressed: () {
        Get.toNamed('/postpage')!.then((value) {
          if (value != null) {
            postProvider.addToPostList(value);
            // debugPrint(value.tweetText!);
            debugPrint(value.tweetImage.path!);
          }
        });
      },
      child: Image.asset(
        'assets/postIcon.png',
        color: Colors.white,
      ),
    );
  }
}
