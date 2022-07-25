import 'package:flutter/material.dart';
import 'package:netflix_clone/Presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_clone/Presentation/pages/downloads/page_downloads.dart';
import 'package:netflix_clone/Presentation/pages/fast_laughs/page_fast_laughs.dart';
import 'package:netflix_clone/Presentation/pages/home/page_home.dart';
import 'package:netflix_clone/Presentation/pages/new_and%20_hot/page_new_and_hot.dart';
import 'package:netflix_clone/Presentation/pages/search/page_search.dart';

import '../../core/colors/colors.dart';

class PageMain extends StatelessWidget {
  const PageMain({Key? key}) : super(key: key);
  final _pages = const [
    PageHome(),
    PageNewAndHot(),
    PageFastLaughs(),
    PageSearch(),
    PageDownload()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int newIndex, _) {
            return _pages[newIndex];
          }),
      bottomNavigationBar: BottomNavigationWidgets(),
    );
  }
}
