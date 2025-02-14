import 'package:flutter/material.dart';

import '../shared/constants/color_const.dart';
import '../shared/constants/string_constants.dart';
import 'home_page_body.dart';


class WebWidget extends StatelessWidget {
  const WebWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      key: Key(kKeyWeb),
      backgroundColor: primaryWhite,
      body: HomePageBody(),
    );
  }
}

