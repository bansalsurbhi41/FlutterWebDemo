import 'package:flutter/material.dart';
import 'package:nill_web/src/shared/constants/image_const.dart';
import 'package:nill_web/src/shared/constants/string_constants.dart';
import 'package:nill_web/src/shared/utilities/utils.dart';
import 'package:nill_web/src/widget/directional_wave_clipper.dart';

import 'shared/constants/color_const.dart';

class HomePageHeader extends StatefulWidget {
  const HomePageHeader({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  State<HomePageHeader> createState() => _HomePageHeaderState();
}

class _HomePageHeaderState extends State<HomePageHeader> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipPath(
          clipper: DirectionalWaveClipper(horizontalPosition: HorizontalPosition.RIGHT),
          child: Container(
            padding: const EdgeInsets.only(bottom: 200),
            decoration: BoxDecoration(
                color: primaryPurple,
                gradient: LinearGradient(
                    begin: AlignmentDirectional.bottomStart,
                    end: AlignmentDirectional.center,
                    colors: [
                      primaryDarkPurple,
                      const Color(0xff875DFF).withOpacity(0.9),
                    ])),
            alignment: Alignment.center,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      if (Utils.screenWidth(context) > 895)
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Image.asset(
                                ImageConst.logo,
                                width: Utils.responsiveDouble(context: context, value: 80),
                                height: Utils.responsiveDouble(context: context, value: 35),
                                fit: BoxFit.contain,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    children: [
                                      headerText(context: context, text: kCourses),
                                      Icon(
                                        Icons.arrow_drop_down_sharp,
                                        color: Colors.white,
                                        size: Utils.responsiveDouble(context: context, value: 25),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      headerText(context: context, text: kPlatforms),
                                      Icon(
                                        Icons.arrow_drop_down_sharp,
                                        color: Colors.white,
                                        size: Utils.responsiveDouble(context: context, value: 25),
                                      )
                                    ],
                                  ),
                                  headerText(context: context, text: kResources),
                                  headerText(context: context, text: kAbout),
                                ],
                              ),
                            )
                          ],
                        ),
                      if (Utils.screenWidth(context) > 600)
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              ImageConst.maskGroup,
                              width: widget.screenWidth * 0.32,
                              height: widget.screenWidth * 0.32,
                              fit: BoxFit.cover,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    kARevolutionaryWayToEducate,
                                    style: TextStyle(
                                        height: 1.4,
                                        letterSpacing: widget.screenWidth < 767 ? 0.5 : 1.2,
                                        fontFamily: kFontFamily,
                                        fontSize: Utils.responsiveSizeByWidth(
                                            context: context,
                                            webValue:
                                                Utils.responsiveDouble(context: context, value: 35),
                                            tabValue: 45,
                                            tab2Value: 45,
                                            mobileValue: 40),
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    kARevolutionaryWayToEducateDesc,
                                    style: TextStyle(
                                        fontSize: Utils.responsiveSizeByWidth(
                                            context: context,
                                            webValue:
                                                Utils.responsiveDouble(context: context, value: 12),
                                            tabValue: 14,
                                            tab2Value: 14,
                                            mobileValue: 14),
                                        fontFamily: kFontFamily,
                                        fontWeight: FontWeight.w100,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(height: 30),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: Utils.responsiveSizeByWidth(
                                            context: context,
                                            webValue:
                                                Utils.responsiveDouble(context: context, value: 14),
                                            tabValue: 24,
                                            tab2Value: 24,
                                            mobileValue: 20),
                                        child: Icon(Icons.play_arrow,
                                            size: Utils.responsiveSizeByWidth(
                                                context: context,
                                                webValue: Utils.responsiveDouble(
                                                    context: context, value: 19),
                                                tabValue: 25,
                                                tab2Value: 25,
                                                mobileValue: 25),
                                            color: primaryDarkPurple),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        kWhatsNull,
                                        style: TextStyle(
                                            fontSize: Utils.responsiveSizeByWidth(
                                                context: context,
                                                webValue: Utils.responsiveDouble(
                                                    context: context, value: 12),
                                                tabValue: 14,
                                                tab2Value: 14,
                                                mobileValue: 14),
                                            fontFamily: kFontFamily,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      width: Utils.responsiveDouble(context: context, value: 0))
                                ],
                              ),
                            )
                          ],
                        ),
                      if (Utils.screenWidth(context) <= 600)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              ImageConst.maskGroup,
                              width: widget.screenWidth * 0.60,
                              height: widget.screenWidth * 0.60,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              kARevolutionaryWayToEducate,
                              style: TextStyle(
                                  height: 1.4,
                                  letterSpacing: widget.screenWidth < 767 ? 0.5 : 1.2,
                                  fontFamily: kFontFamily,
                                  fontSize: Utils.responsiveSizeByWidth(
                                      context: context,
                                      webValue: Utils.responsiveDouble(context: context, value: 35),
                                      tabValue: 45,
                                      tab2Value: 45,
                                      mobileValue: 40),
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              child: Text(
                                kARevolutionaryWayToEducateDesc2,
                                style: TextStyle(
                                    fontSize: Utils.responsiveSizeByWidth(
                                        context: context,
                                        webValue:
                                            Utils.responsiveDouble(context: context, value: 12),
                                        tabValue: 12,
                                        tab2Value: 12,
                                        mobileValue: 12),
                                    fontFamily: kFontFamily,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.white),
                              ),
                            ),
                            const SizedBox(height: 30),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: Utils.responsiveSizeByWidth(
                                        context: context,
                                        webValue:
                                            Utils.responsiveDouble(context: context, value: 16),
                                        tabValue: 24,
                                        tab2Value: 24,
                                        mobileValue: 20),
                                    child: Icon(Icons.play_arrow,
                                        size: Utils.responsiveSizeByWidth(
                                            context: context,
                                            webValue:
                                                Utils.responsiveDouble(context: context, value: 19),
                                            tabValue: 35,
                                            tab2Value: 35,
                                            mobileValue: 25),
                                        color: primaryDarkPurple),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    kWhatsNull,
                                    style: TextStyle(
                                        fontSize: Utils.responsiveSizeByWidth(
                                            context: context,
                                            webValue:
                                                Utils.responsiveDouble(context: context, value: 19),
                                            tabValue: 14,
                                            tab2Value: 14,
                                            mobileValue: 14),
                                        fontFamily: kFontFamily,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: Utils.responsiveDouble(context: context, value: 0))
                          ],
                        )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              dataContent(
                  color: textSubHeadingPurple,
                  icon: Icons.access_time_filled,
                  value: k60000,
                  valueType: kHoursContent),
              SizedBox(
                  width: Utils.screenWidth(context) >= 480 && Utils.screenWidth(context) <= 560
                      ? 49
                      : Utils.responsiveSizeByWidth(
                          context: context,
                          webValue: 130,
                          tabValue: 100,
                          tab2Value: 100,
                          mobileValue: 32,
                        )),
              dataContent(
                color: textSubHeadingPurple2,
                icon: Icons.people,
                value: k100000,
                valueType: kStudents,
              ),
              SizedBox(
                  width: Utils.screenWidth(context) >= 480 && Utils.screenWidth(context) <= 560
                      ? 49
                      : Utils.responsiveSizeByWidth(
                          context: context,
                          webValue: 130,
                          tabValue: 100,
                          tab2Value: 100,
                          mobileValue: 32,
                        )),
              dataContent(
                color: primaryDarkPurple,
                icon: Icons.public,
                value: k110,
                valueType: kCountries,
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget dataContent(
      {required IconData icon,
      required Color color,
      required String value,
      required String valueType}) {
    return Container(
      height: Utils.responsiveSizeByWidth(
          context: context, webValue: 183, tabValue: 175, tab2Value: 150, mobileValue: 150),
      width: Utils.responsiveSizeByWidth(
          context: context, webValue: 160, tabValue: 135, tab2Value: 120, mobileValue: 120),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: primaryPurple, width: 2),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: Utils.responsiveSizeByWidth(
              context: context,
              webValue: 50,
              tabValue: 30,
              tab2Value: 30,
              mobileValue: 30,
            ),
            color: color,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            value,
            style: TextStyle(
                fontSize: Utils.responsiveSizeByWidth(
                  context: context,
                  webValue: 20,
                  tabValue: 18,
                  tab2Value: 18,
                  mobileValue: 18,
                ),
                fontWeight: FontWeight.w600,
                color: color),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            valueType,
            style: TextStyle(
                fontSize: Utils.responsiveSizeByWidth(
                  context: context,
                  webValue: 18,
                  tabValue: 16,
                  tab2Value: 16,
                  mobileValue: 16,
                ),
                fontWeight: FontWeight.w600,
                color: color),
          ),
        ],
      ),
    );
  }
}

Widget headerText(
    {required BuildContext context, required String text, Color color = Colors.white}) {
  return Text(
    text,
    style: TextStyle(
        fontSize: Utils.responsiveSizeByWidth(
            context: context, webValue: 20, tabValue: 16, tab2Value: 16, mobileValue: 20),
        fontWeight: FontWeight.w400,
        color: color),
  );
}
