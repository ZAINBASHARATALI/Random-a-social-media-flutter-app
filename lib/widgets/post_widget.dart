import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ltp/models/postmodel.dart';
import 'package:ltp/providers/posts.dart';
import 'package:ltp/utils/constants.dart';
import 'package:ltp/widgets/special_icon.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: must_be_immutable
class PostWidget extends StatelessWidget {
  PostWidget({
    Key? key,
    required this.datamodel,
    required this.index,
  }) : super(key: key);
  PostModel datamodel;
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: kaccentColor.withOpacity(0.25),
              blurRadius: 20,
              spreadRadius: 1,
            ),
          ],
          //border: Border.all(color: kaccentColor.withOpacity(0.2), width: 2),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white),
      margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 5),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: kaccentColor,
                    child: CircleAvatar(
                      backgroundImage:
                          NetworkImage(datamodel.user.profileImage),
                      radius: 28,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 5),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        datamodel.user.name.text
                            .minFontSize(17)
                            .color(kMainColor)
                            .maxFontSize(18)
                            .fontWeight(FontWeight.w700)
                            .make(),
                        // datamodel.user.bio.text
                        //     .minFontSize(12)
                        //     .maxFontSize(13)
                        //     .color(Colors.blue)
                        //     .make(),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.access_time,
                              color: kMainColor,
                              size: 18,
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            datamodel.uploadTime
                                .toString()
                                .text
                                .letterSpacing(1)
                                .minFontSize(10)
                                .maxFontSize(12)
                                .color(Colors.black)
                                .make(),
                          ],
                        ),
                      ]),
                ),
              ],
            ),
          ),
          const SizedBox(
            child: Divider(
              color: Colors.black38,
            ),
            height: 10,
          ),
          datamodel.tweetText.isEmpty
              ? Container()
              : Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: datamodel.tweetText.text.make(),
                ),
          datamodel.tweetImage == null
              ? Container()
              : Image.file(datamodel.tweetImage!),
          const SizedBox(
            child: Divider(
              color: Colors.black38,
            ),
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SpecialIcon(
              val: datamodel.comments.length.toString(),
              iconData: Icons.comment_outlined,
              color: kMainColor,
              doFunction: () {
                Get.toNamed('/commentspage', arguments: index);
              },
            ),
            SpecialIcon(
              val: datamodel.retweets.length.toString(),
              iconData: Icons.repeat,
              color: kmainColor,
              doFunction: () {},
            ),
            Consumer<PostsProvider>(
              builder: (context, valueprovider, child) => SpecialIcon(
                val: datamodel.likes.length.toString(),
                iconData: datamodel.likes.isEmpty
                    ? Icons.favorite_border_outlined
                    : Icons.favorite,
                color: datamodel.likes.isEmpty ? kMainColor : kMainColor,
                doFunction: () {
                  valueprovider.addLiketoPost(index, datamodel.user.name);
                },
              ),
            ),
            SpecialIcon(
              val: '',
              iconData: Icons.share,
              color: kMainColor,
              doFunction: () {},
            )
          ]),
        ],
      ),
    );
  }
}
