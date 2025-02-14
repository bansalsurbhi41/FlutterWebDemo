
import 'package:flutter/material.dart';
import 'package:nill_web/src/shared/utilities/utils.dart';

import 'color_const.dart';


class PopularCourses extends StatefulWidget {
  const PopularCourses({super.key, required this.screenHeight, required this.screenWidth,});

  final double screenHeight;
  final double screenWidth;

  @override
  State<PopularCourses> createState() => _PopularCoursesState();
}

class _PopularCoursesState extends State<PopularCourses> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Our Popular Courses',
        style: TextStyle(
          fontSize:  Utils.responsiveSize(context: context, webValue: 36, tabValue: 30, tab2Value: 30, mobileValue: 26,),
          color: darkText,
          fontWeight: FontWeight.w600,
        ),),
        SizedBox(height: Utils.responsiveSize(context: context, webValue: 15, tabValue: 15, tab2Value: 15, mobileValue: 10,)),
        Text('Lorem ipsum dolor sit amet, in sed integer. Scelerisque nam evget\nimperdiet accumsan, ipsum  turpis cursus. In elit amet, tortor nunc.',
        style: TextStyle(
          height: 1.2,
          fontSize: Utils.responsiveSize(context: context, webValue: 14, tabValue: 12, tab2Value: 12, mobileValue: 12,),
          color: greyText,
          fontWeight: FontWeight.w100,
          wordSpacing: 2
        ),),
        SizedBox(height: Utils.responsiveSize(context: context, webValue: 66, tabValue: 40, tab2Value: 40, mobileValue: 40,)),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 73,
          children: [
            popularCoursesBlog(image: 'assets/images/Rectangle 6.png', title: 'Creative Writing',subTitle: 'Creative Writing : Creative writing is\nany writing that goes outside\nthe bounds of normal professional'),
            popularCoursesBlog(image: 'assets/images/Rectangle 9.png', title: 'Web Development', subTitle: 'Creative Writing : Creative writing is\nany writing that goes outside\nthe bounds of normal professional'),
            popularCoursesBlog(image: 'assets/images/Rectangle 12.png', title: 'Graphic Design', subTitle: 'Creative Writing : Creative writing is\nany writing that goes outside \nthe bounds of normal professional'),
          ],
        )

      ],
    );
  }

  Widget popularCoursesBlog({required String image, required String title, required String subTitle,}){
    return  SizedBox(
      height: 380,
      width: 269,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 269,
                height: 214,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10) //Utils.responsiveDouble(context: context, value: widget.screenWidth > 1024 ? 10 : widget.screenWidth > 767 ? 30 : 40 )
                ),
                child: Image.asset(image, fit: BoxFit.contain,),
              ),
              Positioned(
                top: 7/*Utils.responsiveDouble(context: context, value: 7)*/,
                left: 7/*Utils.responsiveDouble(context: context, value: 7)*/,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(11),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: Utils.responsiveDouble(context: context, value: 10), vertical: Utils.responsiveDouble(context: context, value: 2)),
                  child: Text('Creative',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize:Utils.responsiveSize(context: context, webValue: 14, tabValue: 14, tab2Value: 14, mobileValue: 14),
                    fontWeight: FontWeight.w400
                  ),),
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          Text(title,
            style: const TextStyle(
              fontSize: 24,
              color: darkText,
              fontWeight: FontWeight.w600,

            ),),
          Text(subTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              color: greyText,
              fontWeight: FontWeight.w400,
            ),),
          const SizedBox(height: 17),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.play_circle, size: 17, color: primaryDarkPurple, )),
                  const Text('12x Lessons',
                    style: TextStyle(
                      fontSize: 13,
                      color: darkText,
                      fontWeight: FontWeight.w600,
                    ),),
                ],
              ),

              Container(
                height: 25,
                width: 56,
                decoration: BoxDecoration(
                  color: primaryDarkPurple,
                  borderRadius: BorderRadius.circular(9)
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('4.9',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13,
                        color: primaryWhite,
                        fontWeight: FontWeight.w400,
                      ),),
                    SizedBox(width: 5),
                    Icon(Icons.star, color: yellow, size: 9,)
                  ],),
              )
            ],
          )
        ],
      ),
    );
  }
}

