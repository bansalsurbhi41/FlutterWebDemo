import 'package:flutter/material.dart';
import 'package:nill_web/src/shared/utilities/utils.dart';
import 'package:nill_web/src/widget/directional_wave_clipper.dart';

import 'color_const.dart';

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
                  Image.asset('assets/images/logo.png', width: Utils.responsiveDouble(context: context, value: 80)),
                  const SizedBox(height: 32),
                  SizedBox(
                      width: 220,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor',
                        style: TextStyle(
                            fontSize: Utils.responsiveSize(context: context, webValue: 18, tabValue: 17.5, tab2Value: 18, mobileValue: 18),
                          color: Colors.white,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500
                        ),
                      )),
                  const SizedBox(height: 22),
                  Row(
                    children: [
                      Image.asset('assets/images/be.png', width: 30),
                      const SizedBox(width: 27),
                      Image.asset('assets/images/Linkedin.png', width: Utils.responsiveDouble(context: context, value: 22)),
                      const SizedBox(width: 27),
                      Image.asset('assets/images/facebook.png', width: Utils.responsiveDouble(context: context, value: 22)),
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headingTextWidget(context: context, text: 'Company'),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: 'About Us'),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: 'Services'),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: 'Community'),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: 'Testimonial'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headingTextWidget(context: context, text: 'Support'),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: 'Help Center'),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: 'Tweet @ Us'),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: 'Webians'),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: 'Feedback'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headingTextWidget(context: context, text: 'Links'),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: 'Courses'),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: 'Become Teacher'),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: 'Service'),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: 'All in One'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headingTextWidget(context: context, text: 'Contact Us'),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: '(91) 98765  4321 5'),
                  const SizedBox(height: 32),
                  textWidget(context: context, text: 'support@mail.com'),
                ],
              ),
            ],
          )
              : Utils.screenWidth(context) < 520
          ////////////////////////////// Working here
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
                      Image.asset('assets/images/logo.png', width: Utils.responsiveDouble(context: context, value: 80)),
                      const SizedBox(height: 32),
                      Row(
                        children: [
                          Image.asset('assets/images/be.png', width: 30),
                          const SizedBox(width: 27),
                          Image.asset('assets/images/Linkedin.png', width: Utils.responsiveDouble(context: context, value: 22)),
                          const SizedBox(width: 27),
                          Image.asset('assets/images/facebook.png', width: Utils.responsiveDouble(context: context, value: 22)),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                      width: 220,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor',
                        style: TextStyle(
                            fontSize: Utils.responsiveSize(context: context, webValue: 18, tabValue: 17.5, tab2Value: 18, mobileValue: 18),
                            color: Colors.white,
                            fontFamily: 'Lato',
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
                  const ContactOptionWidget( headingText: 'Company', index: 1),
                  divisionWidget(),
                  const ContactOptionWidget(headingText: 'Support', index: 2),
                  divisionWidget(),
                  const ContactOptionWidget(headingText: 'Links', index: 3),
                  divisionWidget(),
                  const ContactOptionWidget(headingText: 'Contact Us', index: 4),
                  divisionWidget(),
                ],
              ),

            ],
          )
          //////////////////////////
              : Column(
           mainAxisSize: MainAxisSize.min,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/logo.png', width: Utils.responsiveDouble(context: context, value: 80)),
                      const SizedBox(height: 32),
                      Row(
                        children: [
                          Image.asset('assets/images/be.png', width: 30),
                          const SizedBox(width: 27),
                          Image.asset('assets/images/Linkedin.png', width: Utils.responsiveDouble(context: context, value: 22)),
                          const SizedBox(width: 27),
                          Image.asset('assets/images/facebook.png', width: Utils.responsiveDouble(context: context, value: 22)),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                      width: 220,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor',
                        style: TextStyle(
                            fontSize: Utils.responsiveSize(context: context, webValue: 18, tabValue: 17.5, tab2Value: 18, mobileValue: 18),
                            color: Colors.white,
                            fontFamily: 'Lato',
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
                      headingTextWidget(context: context, text: 'Company'),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: 'About Us'),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: 'Services'),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: 'Community'),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: 'Testimonial'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      headingTextWidget(context: context, text: 'Support'),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: 'Help Center'),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: 'Tweet @ Us'),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: 'Webians'),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: 'Feedback'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      headingTextWidget(context: context, text: 'Links'),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: 'Courses'),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: 'Become Teacher'),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: 'Service'),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: 'All in One'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      headingTextWidget(context: context, text: 'Contact Us'),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: '(91) 98765  4321 5'),
                      const SizedBox(height: 32),
                      textWidget(context: context, text: 'support@mail.com'),
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

  /*Widget contactOption ({required String headingText, required int index}){
    bool is1IndexOn = false;
    bool is2IndexOn = false;
    bool is3IndexOn = false;
    bool is4IndexOn = false;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          headingTextWidget(text: headingText),
          IconButton(
              onPressed: () {
                switch(index) {
                  case 1 :
                    is1IndexOn = true;
                    break;
                  case 2 :
                    is2IndexOn = true;
                    break;
                  case 3 :
                    is3IndexOn = true;
                    break;
                  case 4 :
                    is4IndexOn = true;
                    break;
                }


          },
              icon: const Icon(Icons.arrow_drop_down, color: Colors.white,))
        ],
      ),
    );
  }*/




}

Widget headingTextWidget({ required BuildContext context, required String text}){
  return Text(
    text,
    style: TextStyle(
        fontSize: Utils.responsiveSize(context: context, webValue: 24, tabValue: 20, tab2Value: 18, mobileValue: 18),
        color: Colors.white,
        fontFamily: 'Lato',
        fontWeight: FontWeight.w600
    ),
  );
}

Widget textWidget({required BuildContext context, required String text}){
  return Text(
    text,
    style: TextStyle(
        fontSize: Utils.responsiveSize(context: context, webValue: 18, tabValue: 16, tab2Value: 14, mobileValue: 15),
        color: Colors.white,
        fontFamily: 'Lato',
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
                textWidget(context: context, text: 'About Us'),
                const SizedBox(height: 20),
                textWidget(context: context, text: 'Services'),
                const SizedBox(height: 20),
                textWidget(context: context, text: 'Community'),
                const SizedBox(height: 20),
                textWidget(context: context, text: 'Testimonial'),
              ],
            ),
          if(activeIndex == 2)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                textWidget(context: context, text: 'Help Center'),
                const SizedBox(height: 20),
                textWidget(context: context, text: 'Tweet @ Us'),
                const SizedBox(height: 20),
                textWidget(context: context, text: 'Webians'),
                const SizedBox(height: 20),
                textWidget(context: context, text: 'Feedback'),
              ],
            ),
          if(activeIndex == 3)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                textWidget(context: context, text: 'Courses'),
                const SizedBox(height: 20),
                textWidget(context: context, text: 'Become Teacher'),
                const SizedBox(height: 20),
                textWidget(context: context, text: 'Service'),
                const SizedBox(height: 20),
                textWidget(context: context, text: 'All in One'),
              ],
            ),
          if(activeIndex == 4)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                textWidget(context: context, text: '(91) 98765  4321 5'),
                const SizedBox(height: 20),
                textWidget(context: context, text: 'support@mail.com'),
              ],
            ),
        ],
      ),
    );
  }
}



