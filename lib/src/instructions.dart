
import 'package:flutter/material.dart';
import 'package:nill_web/src/shared/utilities/utils.dart';

import 'color_const.dart';

class Instructions extends StatefulWidget {
  const Instructions({super.key});

  @override
  State<Instructions> createState() => _InstructionsState();
}

class _InstructionsState extends State<Instructions> {
  @override
  Widget build(BuildContext context) {
    return Utils.screenWidth(context) >= 1032 ? Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        instructionsContent(),
        instructionsImage()
      ],
    ):
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        instructionsImage(),
        instructionsContent(),

      ],
    );
  }

  Widget instructionsContent(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment:  Utils.screenWidth(context) >= 1032 ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 51),
          Text('Become an Instructor',
            style: TextStyle(
                height: 1.2,
                fontFamily: 'Lato',
                fontSize: Utils.responsiveSize(context: context, webValue: 48, tabValue: 42, tab2Value: 38, mobileValue: 35),
                color: darkText,
                fontWeight: FontWeight.w800
            ),),
          SizedBox(height: Utils.screenWidth(context) >= 700 ? 41: 27,),
          SizedBox(
            width: Utils.screenWidth(context) >= 1336 ? 670 : Utils.screenWidth(context) < 1336 && Utils.screenWidth(context) >= 480 ? 500 : 400,
            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit /amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor/purus non enim praesent elementum facilisis leo,\n\nvel fringilla est ullamcorper eget nulla facilisi etiam dignissim diam quis enim/lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci',
              textAlign: Utils.screenWidth(context) >= 1032 ? TextAlign.start:TextAlign.center,
              style: TextStyle(
                  height: 1.2,
                  fontFamily: 'Lato',
                  fontSize: Utils.responsiveSize(context: context, webValue: 18, tabValue: 18, tab2Value: 16, mobileValue: 14),
                  color: Colors.black,
                  fontWeight: FontWeight.w400
              ),),
          ),
          const SizedBox(height: 30,),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: primaryDarkPurple, width: 1)
            ),
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 15),
            child: Text('Click Here to Apply',
              style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: Utils.responsiveSize(context: context, webValue: 22, tabValue: 22, tab2Value: 17, mobileValue: 16),
                  color: darkText,
                  fontWeight: FontWeight.w800
              ),),
          ),
        ],
      ),
    );
  }

  Widget instructionsImage(){
    return Image.asset(
      'assets/images/instructor.png',
      width: Utils.screenWidth(context) >= 1032 ? Utils.screenWidth(context)* 0.35  : 300,
      height: Utils.screenWidth(context) >= 1032 ?Utils.screenWidth(context)* 0.45 : 450,
      fit: BoxFit.cover,
    );
  }
}
