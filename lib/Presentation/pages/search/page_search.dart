import 'package:flutter/material.dart';
import 'package:netflix_clone/Presentation/main_page/widgets/bottom_nav.dart';

class PageSearch extends StatelessWidget {
  const PageSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text("Search"),
      ),
    );
  }
}
