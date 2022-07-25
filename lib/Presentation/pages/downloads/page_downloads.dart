import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/Presentation/pages/downloads/widgets/download_image_widget.dart';
import 'package:netflix_clone/core/constant.dart';

import '../../../core/colors/colors.dart';
import '../../widgets/app_bar_widget.dart';

final List<String> movieDamoList = [
  "http://surl.li/cmxiv",
  "http://surl.li/cmxjk",
  "http://surl.li/cmxmg",
];

class PageDownload extends StatelessWidget {
  const PageDownload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.height);
    print(size.width);
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: "Downloads",
          ),
        ),
        body: ListView(
          children: [
            SmartDownloads(),
            SizedBox(
              height: 18,
            ),
            Text(
              "Introducing Downloads for You",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            kheight,
            Text(
              "We will downloads a personalised selection of \nmovies and show for you , so there's \n is always something to watch on your \ndevice",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
            ),
            Container(
              width: size.width,
              height: size.width - 70,
              color: kBlackColor,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: size.width * 0.35),
                  ),
                  DownloadsImageWidget(
                    size: size,
                    image: movieDamoList[0],
                    angle: 8,
                    cmargin: EdgeInsets.only(left: size.width * 0.293),
                    height: size.width * .57,
                  ),
                  DownloadsImageWidget(
                    size: size,
                    image: movieDamoList[2],
                    angle: -8,
                    cmargin: EdgeInsets.only(right: size.width * 0.293),
                    height: size.width * .57,
                  ),
                  DownloadsImageWidget(
                    size: size,
                    image: movieDamoList[1],
                    cmargin: const EdgeInsets.only(top: 30),
                    height: size.width * .62,
                  ),
                ],
              ),
            ),
            kheight,
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
              color: kButtonColorBlue,
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  "Set up",
                  style: TextStyle(
                      color: kwhiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            kheight,
            MaterialButton(
              color: kButtonColorWhite,
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "See what you can download",
                  style: TextStyle(
                      color: kBlackColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            kheight,
          ],
        ),
      ),
    );
  }
}

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings,
          color: kwhiteColor,
        ),
        kwidth,
        Text("Start Downloads")
      ],
    );
  }
}
