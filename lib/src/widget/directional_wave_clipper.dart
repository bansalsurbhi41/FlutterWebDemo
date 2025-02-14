import 'package:flutter/material.dart';

enum VerticalPosition { TOP, BOTTOM }
enum HorizontalPosition { LEFT, RIGHT }

class DirectionalWaveClipper extends CustomClipper<Path> {
  final VerticalPosition verticalPosition;
  final HorizontalPosition horizontalPosition;

  DirectionalWaveClipper({
    this.horizontalPosition = HorizontalPosition.LEFT,
    this.verticalPosition = VerticalPosition.BOTTOM,
  });


  @override
  Path getClip(Size size) {
    var path = Path();
    var firstControlPoint;
    var firstEndPoint;
    var secondControlPoint;
    var secondEndPoint;

    if(verticalPosition == VerticalPosition.BOTTOM && horizontalPosition == HorizontalPosition.LEFT){
      firstEndPoint = Offset(size.width * .5, size.height - 20);
      firstControlPoint = Offset(size.width * .25, size.height - 30);
      secondControlPoint = Offset(size.width * .75, size.height - 10);
      secondEndPoint = Offset(size.width, size.height - 50);

      path
        ..lineTo(0.0, size.height)
        ..quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
            firstEndPoint.dx, firstEndPoint.dy)
        ..quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
            secondEndPoint.dx, secondEndPoint.dy)
        ..lineTo(size.width, 0.0)
        ..close();
    }else if(verticalPosition == VerticalPosition.BOTTOM && horizontalPosition == HorizontalPosition.RIGHT){
      firstControlPoint = Offset(size.width * .15, size.height- 110);
      firstEndPoint = Offset(size.width * .5, size.height - 100);
      secondControlPoint = Offset(size.width * .85, size.height - 130);
      secondEndPoint = Offset(size.width, size.height);

      path
        ..lineTo(0.0, size.height - 250)
        ..quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
            firstEndPoint.dx, firstEndPoint.dy)
        ..quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
            secondEndPoint.dx, secondEndPoint.dy)
        ..lineTo(size.width, 0.0)
        ..close();

    }else if (verticalPosition == VerticalPosition.TOP &&
        horizontalPosition == HorizontalPosition.RIGHT) {
      firstEndPoint = Offset(size.width * .5, 20);
      firstControlPoint = Offset(size.width * .25, 10);
      secondEndPoint = Offset(size.width, 0);
      secondControlPoint = Offset(size.width * .75, 30);

      path
        ..lineTo(0, 30)
        ..quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
            firstEndPoint.dx, firstEndPoint.dy)
        ..quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
            secondEndPoint.dx, secondEndPoint.dy)
        ..lineTo(size.width, size.height)
        ..lineTo(0.0, size.height)
        ..close();
    }
    else {
      firstEndPoint = Offset(size.width * .5, 60);
      firstControlPoint = Offset(size.width * .25, 80);
      secondEndPoint = Offset(size.width, 200);
      secondControlPoint = Offset(size.width * .75, 10);

      path
        ..quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
            firstEndPoint.dx, firstEndPoint.dy)
        ..quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
            secondEndPoint.dx, secondEndPoint.dy)
        ..lineTo(size.width  + 1000, size.height)
        ..lineTo(0.0, size.height)
        ..close();
    }
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => oldClipper != this;
}