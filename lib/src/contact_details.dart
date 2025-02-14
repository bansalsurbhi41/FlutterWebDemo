import 'package:flutter/material.dart';
import 'package:nill_web/src/shared/constants/image_const.dart';
import 'package:nill_web/src/shared/constants/string_constants.dart';
import 'package:nill_web/src/shared/utilities/utils.dart';
import 'package:nill_web/src/widget/directional_wave_clipper.dart';

import 'shared/constants/color_const.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({super.key});

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: DirectionalWaveClipper(
        verticalPosition: VerticalPosition.TOP,
          horizontalPosition: HorizontalPosition.LEFT
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topCenter,
                end: AlignmentDirectional.bottomCenter,
                colors: [
                  primaryDarkPurple,
                  const Color(0xff875DFF).withOpacity(0.9),
                ]
            )
        ),
        // alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(top: 330, bottom: 100),
          child: Utils.screenWidth(context) > 874
              ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(ImageConst.logo, width: Utils.responsiveDouble(context: context, value: 80)),
                  const SizedBox(height: 32),
                  SizedBox(
                      width: 220,
                      child: Text(
                        kLorem,
                        style: TextStyle(
                            fontSize: Utils.responsiveSizeByWidth(context: context, webValue: 18, tabValue: 17.5, tab2Value: 18, mobileValue: 18),
                          color: Colors.white,
                          fontFamily: kFontFamily,
                          fontWeight: FontWeight.w500
                        ),
                      )),
                  const SizedBox(height: 22),
                  Row(
                    children: [
                      Image.asset(ImageConst.be, width: 30),
                      const SizedBox(width: 27),
                      Image.asset(ImageConst.linkedin, width: Utils.responsiveDouble(context: context, value: 22)),
                      const SizedBox(width: 27),
                      Image.asset(ImageConst.facebook, width: Utils.responsiveDouble(context: context, value: 22)),
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headingTextWidget(context: context, text: kCompany),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: kAboutUs),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: kServices),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: kCommunity),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: kTestimonial),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headingTextWidget(context: context, text: kSupport),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: kHelpCenter),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: kTweetUs),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: kWebians),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: kFeedback),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headingTextWidget(context: context, text: kLinks),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: kCourses),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: kBecomeTeacher),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: kService),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: kAllInOne),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headingTextWidget(context: context, text: kContactUs),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: kMobileNum),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: kEmail),
                ],
              ),
            ],
          )
              : Utils.screenWidth(context) < 520
              ? Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(ImageConst.logo, width: Utils.responsiveDouble(context: context, value: 80)),
                      const SizedBox(height: 32),
                      Row(
                        children: [
                          Image.asset(ImageConst.be, width: 30),
                          const SizedBox(width: 27),
                          Image.asset(ImageConst.linkedin, width: Utils.responsiveDouble(context: context, value: 22)),
                          const SizedBox(width: 27),
                          Image.asset(ImageConst.facebook, width: Utils.responsiveDouble(context: context, value: 22)),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                      width: 220,
                      child: Text(
                        kLorem,
                        style: TextStyle(
                            fontSize: Utils.responsiveSizeByWidth(context: context, webValue: 18, tabValue: 17.5, tab2Value: 18, mobileValue: 18),
                            color: Colors.white,
                            fontFamily: kFontFamily,
                            fontWeight: FontWeight.w500
                        ),
                      )),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 40
                ),
                child: Divider(height: 1,color: primaryWhite,),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ContactOptionWidget( headingText: kCompany, index: 1),
                  divisionWidget(),
                  const ContactOptionWidget(headingText: kSupport, index: 2),
                  divisionWidget(),
                  const ContactOptionWidget(headingText: kLinks, index: 3),
                  divisionWidget(),
                  const ContactOptionWidget(headingText: kContactUs, index: 4),
                  divisionWidget(),
                ],
              ),

            ],
          )

              : Column(
           mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(ImageConst.logo, width: Utils.responsiveDouble(context: context, value: 80)),
                      const SizedBox(height: 32),
                      Row(
                        children: [
                          Image.asset(ImageConst.be, width: 30),
                          const SizedBox(width: 27),
                          Image.asset(ImageConst.linkedin, width: Utils.responsiveDouble(context: context, value: 22)),
                          const SizedBox(width: 27),
                          Image.asset(ImageConst.facebook, width: Utils.responsiveDouble(context: context, value: 22)),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                      width: 220,
                      child: Text(
                        kLorem,
                        style: TextStyle(
                            fontSize: Utils.responsiveSizeByWidth(context: context, webValue: 18, tabValue: 17.5, tab2Value: 18, mobileValue: 18),
                            color: Colors.white,
                            fontFamily: kFontFamily,
                            fontWeight: FontWeight.w500
                        ),
                      )),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 40
                ),
                child: Divider(height: 1,color: primaryWhite,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      headingTextWidget(context: context, text: kCompany),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: kAboutUs),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: kServices),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: kCommunity),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: kTestimonial),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      headingTextWidget(context: context, text: kSupport),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: kHelpCenter),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: kTweetUs),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: kWebians),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: kFeedback),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      headingTextWidget(context: context, text: kLinks),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: kCourses),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: kBecomeTeacher),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: kService),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: kAllInOne),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      headingTextWidget(context: context, text: kContactUs),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: kMobileNum),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: kEmail),
                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget divisionWidget(){
    return const Padding(
        padding: EdgeInsets.symmetric(
            vertical: 10
        ),
        child: Divider(height: 1,color: primaryWhite,),
    );
  }

}

Widget headingTextWidget({ required BuildContext context, required String text}){
  return Text(
    text,
    style: TextStyle(
        fontSize: Utils.responsiveSizeByWidth(context: context, webValue: 24, tabValue: 20, tab2Value: 18, mobileValue: 18),
        color: Colors.white,
        fontFamily: kFontFamily,
        fontWeight: FontWeight.w600
    ),
  );
}

Widget textWidget({required BuildContext context, required String text}){
  return Text(
    text,
    style: TextStyle(
        fontSize: Utils.responsiveSizeByWidth(context: context, webValue: 18, tabValue: 16, tab2Value: 14, mobileValue: 15),
        color: Colors.white,
        fontFamily: kFontFamily,
        fontWeight: FontWeight.w600
    ),
  );
}

class ContactOptionWidget extends StatefulWidget {
  final String headingText;
  final int index;

  const ContactOptionWidget({super.key, required this.headingText, required this.index});

  @override
  State<ContactOptionWidget> createState() => _ContactOptionWidgetState();
}


class _ContactOptionWidgetState extends State<ContactOptionWidget> {
  int activeIndex = -1; // Stores the active index

  void toggleIndex(int index) {
    setState(() {
      activeIndex = (activeIndex == index) ? -1 : index; // Toggle index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              headingTextWidget( context: context,text: widget.headingText),
              IconButton(
                onPressed: () => toggleIndex(widget.index),
                icon: Icon(
                  activeIndex == widget.index ? Icons.arrow_drop_up_sharp : Icons.arrow_drop_down,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          if(activeIndex == 1)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                textWidget(context: context, text: kAboutUs),
                const SizedBox(height: 20),
                textWidget(context: context, text: kServices),
                const SizedBox(height: 20),
                textWidget(context: context, text: kCommunity),
                const SizedBox(height: 20),
                textWidget(context: context, text: kTestimonial),
              ],
            ),
          if(activeIndex == 2)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                textWidget(context: context, text: kHelpCenter),
                const SizedBox(height: 20),
                textWidget(context: context, text: kTweetUs),
                const SizedBox(height: 20),
                textWidget(context: context, text: kWebians),
                const SizedBox(height: 20),
                textWidget(context: context, text: kFeedback),
              ],
            ),
          if(activeIndex == 3)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                textWidget(context: context, text: kCourses),
                const SizedBox(height: 20),
                textWidget(context: context, text: kBecomeTeacher),
                const SizedBox(height: 20),
                textWidget(context: context, text: kService),
                const SizedBox(height: 20),
                textWidget(context: context, text: kAllInOne),
              ],
            ),
          if(activeIndex == 4)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                textWidget(context: context, text: kMobileNum),
                const SizedBox(height: 20),
                textWidget(context: context, text: kEmail),
              ],
            ),
        ],
      ),
    );
  }
}



