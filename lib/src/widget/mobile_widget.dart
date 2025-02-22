import 'package:flutter/material.dart';

import '../shared/constants/color_const.dart';
import '../home_page_header.dart';
import '../shared/constants/image_const.dart';
import '../shared/constants/string_constants.dart';
import '../shared/utilities/utils.dart';
import 'home_page_body.dart';

class MobileWidget extends StatelessWidget {
  const MobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key(kKeyMobile),
      backgroundColor: primaryWhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primaryPurple,
        centerTitle: false,
        title: Image.asset(
          ImageConst.logo,
          width: 50,
          height: 20,
          fit: BoxFit.contain,
        ),
        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          )
        ],
      ),
      body: const HomePageBody(),
      endDrawer: Drawer(
        width: 200,
        backgroundColor: primaryWhite,
        shadowColor: Colors.red,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          children: [
            Row(
              children: [
                headerText(context: context, text: kCourses, color: primaryPurple),
                Icon(
                  Icons.arrow_drop_down_sharp,
                  color: primaryPurple,
                  size: Utils.responsiveDouble(context: context, value: 32),
                )
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                headerText(context: context, text: kPlatforms, color: primaryPurple),
                Icon(
                  Icons.arrow_drop_down_sharp,
                  color: primaryPurple,
                  size: Utils.responsiveDouble(context: context, value: 32),
                )
              ],
            ),
            const SizedBox(height: 24),
            headerText(context: context, text: kResources, color: primaryPurple),
            const SizedBox(height: 24),
            headerText(context: context, text: kAbout, color: primaryPurple),
          ],
        ),
      ),
    );
  }
}
