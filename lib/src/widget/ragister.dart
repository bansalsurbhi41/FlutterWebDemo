import 'package:flutter/material.dart';
import 'package:nill_web/src/shared/utilities/utils.dart';

import '../shared/constants/color_const.dart';
import '../shared/constants/string_constants.dart';


class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Utils.responsiveSizeByWidth(webValue: 0, tabValue: 60, tab2Value: 110, mobileValue: 190, context: context),
      child: Center(
        child: Container(
          height:  Utils.responsiveSizeByWidth(webValue: Utils.screenWidth(context) * 0.35, tabValue: 420, tab2Value: 400, mobileValue: 250, context: context),
          width: Utils.responsiveSizeByWidth(webValue: Utils.screenWidth(context) * 0.55, tabValue: 600, tab2Value: 600, mobileValue: 400, context: context),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: primaryDarkPurple, width: 2)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(kGetStartedNow,
                style: TextStyle(
                  color: darkText,
                  fontSize: Utils.responsiveSizeByWidth(context: context, webValue: 48, tabValue: 40, tab2Value: 40, mobileValue: 25),
                  fontWeight: FontWeight.w800,
                  fontFamily: kFontFamily
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(kGetStartedNowDesc,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Utils.responsiveSizeByWidth(context: context, webValue: 18, tabValue: 16, tab2Value: 16, mobileValue: 12),
                      fontWeight: FontWeight.w400,
                      fontFamily: kFontFamily
                  ),
                ),
              ),
              nameTextField(text: kFullName),
              nameTextField(text: kEMail),
              Container(
                decoration: BoxDecoration(
                  color: primaryPurple,
                  borderRadius: BorderRadius.circular(10)
                ),
                padding: EdgeInsets.symmetric(horizontal: Utils.responsiveSizeByWidth(context: context, webValue: 70, tabValue: 50, tab2Value: 50, mobileValue: 30), vertical: Utils.responsiveSizeByWidth(context: context, webValue: 10, tabValue: 10, tab2Value: 14, mobileValue: 8)), // EdgeInsets.symmetric(horizontal: 70, vertical: 10)
                child: Text(kSubmit,
                style: TextStyle(
                  fontSize:  Utils.responsiveSizeByWidth(context: context, webValue: 24, tabValue: 18, tab2Value: 14, mobileValue: 12),
                  fontWeight: FontWeight.w600,
                 fontFamily: kFontFamily,
                 color: Colors.white
                ),),
              ),


            ],
          ),
        ),
      ),
    );
  }

  Widget nameTextField({required String text}){
    return SizedBox(
      width: Utils.responsiveSizeByWidth(context: context, webValue: 381, tabValue: 350, tab2Value: 350, mobileValue: 200), // 381
      child: TextFormField(
        decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(color: Colors.grey, fontSize: Utils.responsiveSizeByWidth(context: context, webValue: 20, tabValue: 16, tab2Value: 14, mobileValue: 12)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Utils.responsiveSizeByWidth(context: context, webValue: 10, tabValue: 10, tab2Value: 10, mobileValue: 10)), // Adjust for roundness
              borderSide: const BorderSide(color: borderPurple),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Utils.responsiveSizeByWidth(context: context, webValue: 10, tabValue: 10, tab2Value: 10, mobileValue: 10)),
              borderSide: const BorderSide(color: borderPurple, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Utils.responsiveSizeByWidth(context: context, webValue: 10, tabValue: 10, tab2Value: 10,  mobileValue: 10,)),
              borderSide: const BorderSide(color: borderPurple),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: Utils.responsiveSizeByWidth(context: context, webValue: 20, tabValue: 20, tab2Value: 15,  mobileValue: 15,))
        ),
      ),
    );
  }


}


