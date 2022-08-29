import 'dart:html';

import 'package:flutter/material.dart';

const int largeScreenzise = 1366;
const int mediumScreenzise = 768;
const int smallScreenzise = 360;
const int customScreenzise = 1100;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
  final Widget customScreen;
  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    required this.mediumScreen,
    required this.smallScreen,
    required this.customScreen,
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumScreenzise;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenzise &&
      MediaQuery.of(context).size.width < largeScreenzise;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenzise;

  static bool isCustomScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenzise &&
      MediaQuery.of(context).size.width <= customScreenzise;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        double _width = constrains.maxWidth;

        if (_width >= largeScreenzise) {
          return largeScreen;
        } else if (_width < largeScreenzise && _width >= mediumScreenzise) {
          return mediumScreen == null ? largeScreen : mediumScreen;
        } else {
          return smallScreen == null ? largeScreen : smallScreen;
        }
      },
    );
  }
}
