import 'package:flutter/material.dart';

import '../color_const.dart';
import '../shared/utilities/utils.dart';

class CircleClusterUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Main center circle
          Positioned(
            child: CircleAvatar(
              radius: Utils.screenWidth(context)* 0.17, // Half of 366 for the main circle
              backgroundImage: const AssetImage('assets/images/Rectangle 6.png'), // Replace with your image
            ),
          ),
          // Top-left circle
          Positioned(
            top: 50,
            left: 50,
            child: CircleAvatar(
              radius: Utils.screenWidth(context) * 0.05,
              backgroundImage: AssetImage('assets/images/Rectangle 9.png'),
            ),
          ),
          // Top-right circle
          Positioned(
            top: 50,
            right: 50,
            child: CircleAvatar(
              radius: Utils.screenWidth(context) * 0.03,
              backgroundImage: AssetImage('assets/images/Rectangle 12.png'),
            ),
          ),
          // Bottom-left circle
          Positioned(
            bottom: 100,
            left: 30,
            child: CircleAvatar(
              radius: Utils.screenWidth(context) * 0.05,
              backgroundImage: AssetImage('assets/images/Rectangle 6.png'),
            ),
          ),
          // Bottom-right circle
          Positioned(
            bottom: 100,
            right: 30,
            child: CircleAvatar(
              radius: Utils.screenWidth(context) * 0.05,
              backgroundImage: AssetImage('assets/images/Rectangle 9.png'),
            ),
          ),
          // Bottom-center circle
          Positioned(
            bottom: 40,
            child: CircleAvatar(
              radius: Utils.screenWidth(context) * 0.03,
              backgroundImage: AssetImage('assets/images/Rectangle 12.png'),
            ),
          ),
        ],
      ),
    );
  }
}


