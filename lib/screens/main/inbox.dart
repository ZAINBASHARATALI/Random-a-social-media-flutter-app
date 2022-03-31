import 'package:flutter/material.dart';
import 'package:ltp/models/usermodel.dart';
import 'package:ltp/widgets/inbox_card.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final donaldTrump = UserModel(
      name: 'Donald Trump',
      bio: 'President',
      profileImage:
          'https://www.reviewjournal.com/wp-content/uploads/2019/08/12603740_web1_12603740-5a17a465803a4e0d899189cbce4251b5.jpg',
      bannerImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb4eWdIockxFe4lcwv4f-IQ5PeiDHE3lKR7A&usqp=CAU',
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InboxCard(userinbox: donaldTrump),
        //InboxCard(user:),
      ],
    );
  }
}
