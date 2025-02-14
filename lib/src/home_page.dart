import 'package:flutter/material.dart';
import 'package:nill_web/src/shared/utilities/utils.dart';
import 'package:nill_web/src/widget/mobile_widget.dart';
import 'package:nill_web/src/widget/web_widget.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Utils.screenWidth(context) > 895 ? const WebWidget() : const MobileWidget();
  }
}
