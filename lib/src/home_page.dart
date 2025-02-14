import 'package:flutter/material.dart';
import 'package:nill_web/src/popular_courses.dart';
import 'package:nill_web/src/shared/utilities/utils.dart';
import 'package:nill_web/src/widget/mobile_widget.dart';
import 'package:nill_web/src/widget/ragister.dart';
import 'package:nill_web/src/widget/web_widget.dart';

import 'benifits_widget.dart';
import 'color_const.dart';
import 'contact_details.dart';
import 'home_page_header.dart';
import 'instructions.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  /*ShortcutRegistryEntry? _shortcutsEntry;

  @override
  void dispose() {
    _shortcutsEntry?.dispose();
    super.dispose();
  }*/


  @override
  Widget build(BuildContext context) {

    return Utils.screenWidth(context) > 895 ? const WebWidget() : const MobileWidget();
  }

  /*Widget webWidget({required BuildContext context}){
    return Scaffold(
      key: const Key('web'),
      backgroundColor: primaryWhite,
      body: homeBody(context: context),
    );
  }*/

  /*Widget mobileWidget({required BuildContext context}){
    return Scaffold(
      key: const Key('mobile'),
      backgroundColor: primaryWhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primaryPurple,
        centerTitle: false,
        title:  Image.asset('assets/images/logo.png', width: 50,
        height: 20,fit: BoxFit.contain,),
        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.menu, color: Colors.white,),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          )
        ],
      ),
      body: homeBody(context: context),
      endDrawer: Drawer(
        width: 200,
        backgroundColor: primaryWhite,
        shadowColor: Colors.red,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          children: [
            Row(
              children: [
                headerText(context: context,text: 'Courses', color: primaryPurple),
                Icon(Icons.arrow_drop_down_sharp, color:primaryPurple,size: Utils.responsiveDouble(context: context, value: 32),)
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                headerText(context: context,text: 'Platforms', color: primaryPurple),
                Icon(Icons.arrow_drop_down_sharp, color: primaryPurple,size: Utils.responsiveDouble(context: context, value: 32),)
              ],
            ),
            const SizedBox(height: 24),
            headerText(context: context,text: 'Resources',  color: primaryPurple),
            const SizedBox(height: 24),
            headerText(context: context,text: 'About',  color: primaryPurple),
          ],
        ),
      ),
    );
  }*/

  /*Widget homeBody({required BuildContext context}){
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
  }*/

}
