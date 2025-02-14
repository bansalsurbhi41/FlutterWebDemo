
import 'package:flutter/material.dart';
import 'package:nill_web/src/shared/constants/string_constants.dart';
import 'package:nill_web/src/shared/utilities/utils.dart';
import 'package:nill_web/src/widget/ui_grid_widget.dart';

import 'shared/constants/color_const.dart';

class BenefitsWidget extends StatefulWidget {
  const BenefitsWidget({super.key});

  @override
  State<BenefitsWidget> createState() => _BenefitsWidgetState();
}

class _BenefitsWidgetState extends State<BenefitsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 673,
          width: Utils.screenWidth(context),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.bottomStart,
                end: AlignmentDirectional.topStart,
                colors: [
                  primaryDarkPurple,
                  const Color(0xff875DFF).withOpacity(0.9),
                ]
            )
          ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Utils.screenWidth(context) > 905)
            CircleClusterUI(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 51),
              Utils.screenWidth(context) > 905
                  ? benifitTitle()
                  : Center(child: benifitTitle()),
              const SizedBox(height: 61),
              benifitWidget(icon: Icons.stars_sharp, title: kOnlineDegrees, subTitle: kOnlineDegreesDesc),
              const SizedBox(height: 50),
              benifitWidget(icon: Icons.book_rounded, title: kShortCourses, subTitle: kShortCoursesDesc),
              const SizedBox(height: 50),
              benifitWidget(icon: Icons.person_outline_outlined, title: kExpertTraning, subTitle: kExpertTraningDesc),
            ],
          )

              ],
            ),
        );


  }

  Widget benifitTitle() {
    return Text(kBenefitsTitle,
      style: TextStyle(
          height: 1.2,
          fontFamily: kFontFamily,
          fontSize: Utils.responsiveSizeByWidth(context: context, webValue: 48, tabValue: 48, tab2Value: 35, mobileValue: 34),
          color: Colors.white,
          fontWeight: FontWeight.w800
      ),);
  }

  Widget benifitWidget({required IconData icon, required String title, required String subTitle}){
    return  Padding(
      padding: EdgeInsets.only(left: Utils.screenWidth(context) > 905 ? 30:0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: Utils.responsiveSizeByWidth(context: context, webValue: 80, tabValue: 65, tab2Value: 55, mobileValue: 50),
            width: Utils.responsiveSizeByWidth(context: context, webValue: 80, tabValue: 65, tab2Value: 55, mobileValue: 50),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
                icon ,
                size: Utils.responsiveSizeByWidth(context: context, webValue: 50, tabValue: 40, tab2Value: 35, mobileValue: 30),
                color: primaryDarkPurple
            ),
          ),
          SizedBox(width: Utils.screenWidth(context) > 905 ? 57:30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                style: TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: Utils.responsiveSizeByWidth(context: context, webValue: 24, tabValue: 22, tab2Value: 20, mobileValue: 18),
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                ),),
              const SizedBox(height: 10),
              Text(subTitle,
                style: TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: Utils.responsiveSizeByWidth(context: context, webValue: 14, tabValue: 14, tab2Value: 14, mobileValue: 12),
                    color: Colors.white,
                    fontWeight: FontWeight.w400
                ),),
            ],
          ),

        ],
      ),
    );
  }
}
