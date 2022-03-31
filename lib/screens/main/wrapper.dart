import 'package:flutter/material.dart';
import 'package:ltp/models/postmodel.dart';
import 'package:ltp/widgets/bodyselect.dart';
import 'package:ltp/utils/constants.dart';
import 'package:ltp/widgets/bottom_navbar.dart';
import 'package:ltp/widgets/centered_widget.dart';
import 'package:ltp/widgets/drawer.dart';
import 'package:ltp/widgets/floating_button.dart';

class WrapperManager extends StatelessWidget {
  WrapperManager({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final PostModel newmodel = PostModel();
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: kbgColor,
      appBar: AppBar(
        backgroundColor: kmainColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: GestureDetector(
            onTap: () => _scaffoldKey.currentState?.openDrawer(),
            child: CircleAvatar(
              backgroundColor: ktxtwhiteColor,
              child: CircleAvatar(
                backgroundImage: NetworkImage(newmodel.user.profileImage),
                radius: 22,
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: const CustomCenterWidget(),
        actions: [
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(
                'assets/main_icon.png',
                color: ktxtwhiteColor,
              ),
            ),
          ),
        ],
      ),
      body: const BodyWidget(),
      bottomNavigationBar: const BottomNavBar(),
      floatingActionButton: const CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      drawer: const CustomDrawer(),
    );
  }
}
