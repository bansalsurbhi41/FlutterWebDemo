import 'package:flutter/material.dart';
import 'package:nill_web/src/shared/utilities/utils.dart';
import 'package:nill_web/src/widget/directional_wave_clipper.dart';

import 'color_const.dart';

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
                                'assets/images/logo.png',
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
                                      headerText(context: context, text: 'Courses'),
                                      Icon(
                                        Icons.arrow_drop_down_sharp,
                                        color: Colors.white,
                                        size: Utils.responsiveDouble(context: context, value: 25),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      headerText(context: context, text: 'Platforms'),
                                      Icon(
                                        Icons.arrow_drop_down_sharp,
                                        color: Colors.white,
                                        size: Utils.responsiveDouble(context: context, value: 25),
                                      )
                                    ],
                                  ),
                                  headerText(context: context, text: 'Resources'),
                                  headerText(context: context, text: 'About'),
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
                              'assets/images/Mask_Group.png',
                              width: widget.screenWidth * 0.32,
                              height: widget.screenWidth * 0.32,
                              fit: BoxFit.cover,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "A revolutionary\nway to educate.",
                                    style: TextStyle(
                                        height: 1.4,
                                        letterSpacing: widget.screenWidth < 767 ? 0.5 : 1.2,
                                        fontFamily: 'Lato',
                                        fontSize: Utils.responsiveSize(
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
                                    '“Online education is electronically supported learning that relies on the Internet for teacher/student interaction and the distribution of class materials.”',
                                    style: TextStyle(
                                        fontSize: Utils.responsiveSize(
                                            context: context,
                                            webValue:
                                                Utils.responsiveDouble(context: context, value: 12),
                                            tabValue: 14,
                                            tab2Value: 14,
                                            mobileValue: 14),
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w100,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(height: 30),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: Utils.responsiveSize(
                                            context: context,
                                            webValue:
                                                Utils.responsiveDouble(context: context, value: 14),
                                            tabValue: 24,
                                            tab2Value: 24,
                                            mobileValue: 20),
                                        child: Icon(Icons.play_arrow,
                                            size: Utils.responsiveSize(
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
                                        "What’s null?",
                                        style: TextStyle(
                                            fontSize: Utils.responsiveSize(
                                                context: context,
                                                webValue: Utils.responsiveDouble(
                                                    context: context, value: 12),
                                                tabValue: 14,
                                                tab2Value: 14,
                                                mobileValue: 14),
                                            fontFamily: 'Lato',
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
                              'assets/images/Mask_Group.png',
                              width: widget.screenWidth * 0.60,
                              height: widget.screenWidth * 0.60,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "A revolutionary\nway to educate.",
                              style: TextStyle(
                                  height: 1.4,
                                  letterSpacing: widget.screenWidth < 767 ? 0.5 : 1.2,
                                  fontFamily: 'Lato',
                                  fontSize: Utils.responsiveSize(
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
                                "\“Online education is electronically supported learning that\nrelies on the Internet for teacher/student interaction and\nthe distribution of class materials.\”",
                                style: TextStyle(
                                    fontSize: Utils.responsiveSize(
                                        context: context,
                                        webValue:
                                            Utils.responsiveDouble(context: context, value: 12),
                                        tabValue: 12,
                                        tab2Value: 12,
                                        mobileValue: 12),
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w100,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 30),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: Utils.responsiveSize(
                                        context: context,
                                        webValue:
                                            Utils.responsiveDouble(context: context, value: 16),
                                        tabValue: 24,
                                        tab2Value: 24,
                                        mobileValue: 20),
                                    child: Icon(Icons.play_arrow,
                                        size: Utils.responsiveSize(
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
                                    "What’s null?",
                                    style: TextStyle(
                                        fontSize: Utils.responsiveSize(
                                            context: context,
                                            webValue:
                                                Utils.responsiveDouble(context: context, value: 19),
                                            tabValue: 14,
                                            tab2Value: 14,
                                            mobileValue: 14),
                                        fontFamily: 'Lato',
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
                  value: '60,000+',
                  valueType: 'Hours content'),
              SizedBox(
                  width: Utils.screenWidth(context) >= 480 && Utils.screenWidth(context) <= 560
                      ? 49
                      : Utils.responsiveSize(
                          context: context,
                          webValue: 130,
                          tabValue: 100,
                          tab2Value: 100,
                          mobileValue: 32,
                        )),
              dataContent(
                color: textSubHeadingPurple2,
                icon: Icons.people,
                value: '1,00,000+',
                valueType: 'Students',
              ),
              SizedBox(
                  width: Utils.screenWidth(context) >= 480 && Utils.screenWidth(context) <= 560
                      ? 49
                      : Utils.responsiveSize(
                          context: context,
                          webValue: 130,
                          tabValue: 100,
                          tab2Value: 100,
                          mobileValue: 32,
                        )),
              dataContent(
                color: primaryDarkPurple,
                icon: Icons.public,
                value: '110+',
                valueType: 'Countries',
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
      height: Utils.responsiveSize(
          context: context, webValue: 183, tabValue: 175, tab2Value: 150, mobileValue: 150),
      width: Utils.responsiveSize(
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
            size: Utils.responsiveSize(
              context: context,
              webValue: 50,
              tabValue: 30,
              tab2Value: 30,
              mobileValue: 30,
            ),
            color: color,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            value,
            style: TextStyle(
                fontSize: Utils.responsiveSize(
                  context: context,
                  webValue: 20,
                  tabValue: 18,
                  tab2Value: 18,
                  mobileValue: 18,
                ),
                fontWeight: FontWeight.w600,
                color: color),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            valueType,
            style: TextStyle(
                fontSize: Utils.responsiveSize(
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
        fontSize: Utils.responsiveSize(
            context: context, webValue: 20, tabValue: 16, tab2Value: 16, mobileValue: 20),
        fontWeight: FontWeight.w400,
        color: color),
  );
}
