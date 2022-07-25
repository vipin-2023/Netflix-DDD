import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';
import '../../core/constant.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth,
        Text(
          title,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          color: kwhiteColor,
          size: 30,
        ),
        kwidth,
        Container(
          height: 30,
          width: 30,
          color: Color.fromARGB(255, 33, 79, 243),
        ),
        kwidth,
      ],
    );
  }
}
