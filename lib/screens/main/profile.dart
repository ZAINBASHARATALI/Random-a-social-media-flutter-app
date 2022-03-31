import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ltp/models/postmodel.dart';
import 'package:ltp/providers/posts.dart';
import 'package:ltp/utils/constants.dart';
import 'package:ltp/widgets/post_widget.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var postmodel = PostModel();
    final postProvider = Provider.of<PostsProvider>(context);
    var listp = postProvider.getpostListing;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: Get.height * 0.5,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    image: DecorationImage(
                      image: NetworkImage(
                        postmodel.user.bannerImage,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: Get.height * 0.25,
                ),
                Positioned(
                  left: Get.width * 0.2,
                  right: Get.width * 0.2,
                  bottom: 15,
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: ktxtwhiteColor,
                        radius: Get.height * 0.105,
                        child: CircleAvatar(
                          backgroundImage:
                              NetworkImage(postmodel.user.profileImage),
                          radius: Get.height * 0.1,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          postmodel.user.name.text.bold
                              .minFontSize(Get.textScaleFactor * 22)
                              .letterSpacing(2)
                              .makeCentered(),
                          postmodel.user.bio.text
                              .fontWeight(FontWeight.w500)
                              .minFontSize(Get.textScaleFactor * 16)
                              .color(Colors.blue)
                              .letterSpacing(1)
                              .makeCentered(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      postmodel.user.followings.text
                                          .fontWeight(FontWeight.w600)
                                          .minFontSize(Get.textScaleFactor * 18)
                                          .make(),
                                      SizedBox(
                                        width: Get.width * 0.02,
                                      ),
                                      'Followings'
                                          .text
                                          .minFontSize(Get.textScaleFactor)
                                          .make(),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      postmodel.user.followings.text
                                          .fontWeight(FontWeight.w600)
                                          .minFontSize(Get.textScaleFactor * 18)
                                          .make(),
                                      SizedBox(
                                        width: Get.width * 0.02,
                                      ),
                                      'Followings'
                                          .text
                                          .minFontSize(Get.textScaleFactor)
                                          .make(),
                                    ],
                                  ),
                                ]),
                          ),
                          InkWell(
                            onTap: () {},
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                height: Get.height * 0.04,
                                width: Get.width * 0.2,
                                color: kaccentColor,
                                child: 'Follow'
                                    .text
                                    .color(Colors.white)
                                    .makeCentered(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 30),
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 1,
            ),
            'Posts'.text.minFontSize(18).letterSpacing(1).bold.makeCentered(),
            listp.isEmpty
                ? SizedBox(
                    child: 'No Posts available'.text.makeCentered(),
                    height: Get.height * 0.3,
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return index % 2 == 0
                          ? FadeInLeft(
                              duration: const Duration(milliseconds: 600),
                              from: 400,
                              child: PostWidget(
                                datamodel: listp[index],
                                index: index,
                              ),
                            )
                          : FadeInRight(
                              duration: const Duration(milliseconds: 600),
                              from: 400,
                              child: PostWidget(
                                datamodel: listp[index],
                                index: index,
                              ),
                            );
                    },
                    itemCount: listp.length,
                  ),
          ],
        ),
      ),
    );
  }
}
