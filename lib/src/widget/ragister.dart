import 'package:flutter/material.dart';
import 'package:nill_web/src/shared/utilities/utils.dart';

import '../color_const.dart';


class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Utils.responsiveSize(webValue: 0, tabValue: 60, tab2Value: 110, mobileValue: 190, context: context),
      child: Center(
        child: Container(
          height:  Utils.responsiveSize(webValue: Utils.screenWidth(context) * 0.35, tabValue: 420, tab2Value: 400, mobileValue: 250, context: context),
          width: Utils.responsiveSize(webValue: Utils.screenWidth(context) * 0.55, tabValue: 600, tab2Value: 600, mobileValue: 400, context: context),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: primaryDarkPurple, width: 2)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Get Started Now!',
                style: TextStyle(
                  color: darkText,
                  fontSize: Utils.responsiveSize(context: context, webValue: 48, tabValue: 40, tab2Value: 40, mobileValue: 25),
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Lato'
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text('vel fringilla est ullamcorper eget nulla facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Utils.responsiveSize(context: context, webValue: 18, tabValue: 16, tab2Value: 16, mobileValue: 12),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Lato'
                  ),
                ),
              ),
              nameTextField(text: 'Full name'),
              nameTextField(text: 'E-Mail'),
              Container(
                decoration: BoxDecoration(
                  color: primaryPurple,
                  borderRadius: BorderRadius.circular(10)
                ),
                padding: EdgeInsets.symmetric(horizontal: Utils.responsiveSize(context: context, webValue: 70, tabValue: 50, tab2Value: 50, mobileValue: 30), vertical: Utils.responsiveSize(context: context, webValue: 10, tabValue: 10, tab2Value: 14, mobileValue: 8)), // EdgeInsets.symmetric(horizontal: 70, vertical: 10)
                child: Text('Submit',
                style: TextStyle(
                  fontSize:  Utils.responsiveSize(context: context, webValue: 24, tabValue: 18, tab2Value: 14, mobileValue: 12),
                  fontWeight: FontWeight.w600,
                 fontFamily: 'Lato',
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
      width: Utils.responsiveSize(context: context, webValue: 381, tabValue: 350, tab2Value: 350, mobileValue: 200), // 381
      child: TextFormField(
        decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(color: Colors.grey, fontSize: Utils.responsiveSize(context: context, webValue: 20, tabValue: 16, tab2Value: 14, mobileValue: 12)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Utils.responsiveSize(context: context, webValue: 10, tabValue: 10, tab2Value: 10, mobileValue: 10)), // Adjust for roundness
              borderSide: BorderSide(color: borderPurple),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Utils.responsiveSize(context: context, webValue: 10, tabValue: 10, tab2Value: 10, mobileValue: 10)),
              borderSide: const BorderSide(color: borderPurple, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Utils.responsiveSize(context: context, webValue: 10, tabValue: 10, tab2Value: 10,  mobileValue: 10,)),
              borderSide: BorderSide(color: borderPurple),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: Utils.responsiveSize(context: context, webValue: 20, tabValue: 20, tab2Value: 15,  mobileValue: 15,)/*Utils.responsiveSize(context: context, webValue: 24, tabValue: 20, tab2Value: 12,  mobileValue: 0,)*/)
        ),
      ),
    );
  }


}

/*Positioned(
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          height: Utils.responsiveSize(context: context, webValue: Utils.screenWidth(context) * 0.35, tabValue: Utils.screenWidth(context) * 0.35 , mobileValue: Utils.screenWidth(context) * 0.25, tab2Value: Utils.screenWidth(context) * 0.25), //536
          width: Utils.responsiveSize(context: context, webValue: Utils.screenWidth(context) * 0.55, tabValue: Utils.screenWidth(context) * 0.55, mobileValue: Utils.screenWidth(context) * 0.40, tab2Value: Utils.screenWidth(context) * 0.40), // 782

          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: primaryDarkPurple, width: 2)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 40),
            child: Column(
              children: [
                Text('Get Started Now!',
                  style: TextStyle(
                    color: darkText,
                    fontSize: Utils.responsiveSize(context: context, webValue: 48, tabValue: 40, tab2Value: 34, mobileValue: 30),
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Lato'
                  ),
                ),
                const SizedBox(height: 30,),

                Flexible(
                  child: Text('vel fringilla est ullamcorper eget nulla facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Utils.responsiveSize(context: context, webValue: 18, tabValue: 16, tab2Value: 16, mobileValue: 14),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Lato'
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                nameTextField(text: 'Full name'),
                const SizedBox(height: 30,),
                nameTextField(text: 'E-Mail'),
                const SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(
                    color: primaryPurple,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                  child: Text('Submit',
                  style: TextStyle(
                    fontSize: Utils.responsiveSize(context: context, webValue: 24, tabValue: 24, tab2Value: 24, mobileValue: 24),
                    fontWeight: FontWeight.w600,
                   fontFamily: 'Lato',
                   color: Colors.white
                  ),),
                ),


              ],
            ),
          ),
        ),
      ),
    );*/

/*Widget nameTextField({required String text}){
  return SizedBox(
    width: Utils.responsiveSize(context: context, webValue: 381, tabValue: 300, mobileValue: 200, tab2Value: 300), // 381
    child: TextFormField(
      decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20), // Adjust for roundness
            borderSide: BorderSide(color: borderPurple),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: borderPurple, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: borderPurple),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 24)
      ),
    ),
  );
}*/

