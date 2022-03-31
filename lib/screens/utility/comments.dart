import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ltp/providers/posts.dart';
import 'package:ltp/widgets/commentbox.dart';
import 'package:ltp/widgets/inputtext.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class CommentsPage extends StatelessWidget {
  const CommentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myprovider = Provider.of<PostsProvider>(context);
    var list = myprovider.getpostListing;
    final texteditingcontroller = TextEditingController();
    final postindex = Get.arguments;
    void addcommenttoList() {
      myprovider.addCommenttoPost(postindex, texteditingcontroller.text);
    }

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        title: 'Comments'.text.make(),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.8,
              child: ListView.builder(
                itemBuilder: ((context, index) {
                  return CommentBox(
                    msg: list[postindex].comments[index],
                    user: list[postindex].user,
                  );
                }),
                itemCount: list[postindex].comments.length,
              ),
              //color: Colors.blue,
            ),
            CustomTextInputWidget(
              msgController: texteditingcontroller,
              performFunc: addcommenttoList,
            ),
          ],
        ),
      ),
    );
  }
}
