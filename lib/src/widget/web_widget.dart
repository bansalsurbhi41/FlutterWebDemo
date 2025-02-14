import 'package:flutter/material.dart';

import '../color_const.dart';
import 'home_page_body.dart';


class WebWidget extends StatelessWidget {
  const WebWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      key: Key('web'),
      backgroundColor: primaryWhite,
      body: HomePageBody(),
    );
  }
}

