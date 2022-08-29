import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_flutter/helpers/responsiveness.dart';
import 'package:web_flutter/widgets/large_screen.dart';
import 'package:web_flutter/widgets/small_screen.dart';
import 'package:web_flutter/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldkey,
        drawer: const Drawer(),
        appBar: topNavigationBar(context, scaffoldkey),
        body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
          mediumScreen: LargeScreen(),
          customScreen: LargeScreen(),
        ));
  }
}
