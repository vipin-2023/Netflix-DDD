import 'dart:math';

import 'package:flutter/material.dart';

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    this.angle = 0,
    required this.image,
    required this.size,
    required this.height,
    this.cmargin = EdgeInsets.zero,
  }) : super(key: key);

  final Size size;
  final double height;
  final String image;
  final double angle;
  final EdgeInsetsGeometry cmargin;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 100,
      child: Container(
        margin: cmargin,
        width: size.width * .419,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.black,
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
      ),
    );
  }
}
