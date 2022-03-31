import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ltp/widgets/search_profile.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Get.height * 0.05,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: 'People You may Know'
                .text
                .minFontSize(18)
                .letterSpacing(1.5)
                .fontWeight(FontWeight.w500)
                .makeCentered(),
          ),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(50, (index) {
              return index % 2 == 0
                  ? ElasticInLeft(
                      child: const SearchProfile(),
                    )
                  : ElasticInRight(
                      child: const SearchProfile(),
                    );
            }),
          ),
        ),
      ],
    );
  }
}
