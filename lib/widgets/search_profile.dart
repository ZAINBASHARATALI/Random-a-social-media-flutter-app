import 'package:flutter/material.dart';
import 'package:ltp/utils/constants.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchProfile extends StatelessWidget {
  const SearchProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: kaccentColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
            height: 100,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1553095066-5014bc7b7f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8d2FsbCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80'),
                )),
          ),
          Positioned(
            top: 50,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: ktxtwhiteColor,
                  child: const CircleAvatar(
                    radius: 38,
                    backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg?size=626&ext=jpg',
                    ),
                  ),
                ),
                'Imad Wasim'
                    .text
                    .minFontSize(16)
                    .fontWeight(FontWeight.w500)
                    .color(ktxtwhiteColor)
                    .make(),
                'Humorous'
                    .text
                    .minFontSize(10)
                    .fontWeight(FontWeight.w400)
                    .color(ktxtwhiteColor)
                    .make(),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: ktxtwhiteColor)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 3.0, horizontal: 5),
                    child: 'Follow'
                        .text
                        .fontWeight(FontWeight.w500)
                        .letterSpacing(1)
                        .color(ktxtwhiteColor)
                        .make(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
