import 'package:flutter/material.dart';
import 'package:nill_web/src/widget/ragister.dart';

import '../benifits_widget.dart';
import '../contact_details.dart';
import '../home_page_header.dart';
import '../instructions.dart';
import '../popular_courses.dart';
import '../shared/utilities/utils.dart';


class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomePageHeader(screenHeight: Utils.screenHeight(context),screenWidth: Utils.screenWidth(context)),
          const SizedBox(height: 90,),
          PopularCourses(screenHeight: Utils.screenHeight(context),screenWidth: Utils.screenWidth(context)),
          const SizedBox(height: 181,),
          const BenifitsWidget(),
          const SizedBox(height: 20,),
          const Instructions(),
          SizedBox(height: Utils.responsiveSize(context: context, webValue: 90, tabValue: 90, mobileValue: 0, tab2Value: 90)),
          const Stack(
            alignment: Alignment.topCenter,
            children: [
              Column(
                children: [
                  SizedBox(height: 300),
                  ContactDetails(),
                ],
              ),

              RegisterWidget()
            ],
          ),
          // SizedBox(height: 500,),
        ],
      ),
    );
  }
}
