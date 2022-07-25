import 'package:flutter/material.dart';
import 'package:netflix_clone/Presentation/main_page/widgets/bottom_nav.dart';

class PageNewAndHot extends StatelessWidget {
  const PageNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text("New and Hot"),
      ),
    );
  }
}
