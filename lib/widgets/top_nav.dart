import 'package:flutter/material.dart';
import 'package:web_flutter/constants/style.dart';
import 'package:web_flutter/helpers/plarform.dart';
import 'package:web_flutter/helpers/responsiveness.dart';

import 'custom_text.dart';

AppBar topNavigationBar(
  BuildContext context,
  GlobalKey<ScaffoldState> key,
) {
  return isMobile() ? _appBarMobile() : _appBarWeb(context, key);
}

AppBar _appBarMobile() {
  return AppBar(
    backgroundColor: Colors.purple,
    title: Row(
      children: [
        Expanded(child: Container()),
        CustomText(
            color: dark, size: null, text: "Anda Parkinson", weight: null),
        IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(2),
              child: CircleAvatar(
                  child: Icon(
                Icons.person_outline,
                color: dark,
              ))),
        ),
      ],
    ),
  );
}

AppBar _appBarWeb(
  BuildContext context,
  GlobalKey<ScaffoldState> key,
) {
  return AppBar(
    leading: !ResponsiveWidget.isSmallScreen(context)
        ? Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 1),
                  child: Image.asset(
                    "assets/logos/anda_black.png",
                  ),
                ),
              ),
            ],
          )
        : IconButton(
            onPressed: () {
              key.currentState?.openDrawer();
            },
            icon: Icon(Icons.menu)),
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Visibility(
            visible: ResponsiveWidget.isSmallScreen(context) ? true : false,
            child: CustomText(
              text: "Dash",
              color: null,
              size: null,
              weight: null,
            )),
        Expanded(child: Container()),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: dark.withOpacity(.7),
            )),
        Stack(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: dark.withOpacity(.7),
                )),
            Positioned(
              top: 7,
              right: 7,
              child: Container(
                height: 12,
                width: 12,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: active,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: light, width: 2),
                ),
              ),
            ),
          ],
        ),
        Container(
          width: 1,
          height: 22,
          color: lightGray,
        ),
        SizedBox(
          width: 24,
        ),
        CustomText(
          text: "Anda PArkinson",
          size: null,
          color: lightGray,
          weight: null,
        ),
        SizedBox(
          width: 16,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(2),
              child: CircleAvatar(
                  child: Icon(
                Icons.person_outline,
                color: dark,
              ))),
        )
      ],
    ),
    iconTheme: IconThemeData(color: dark),
    backgroundColor: Colors.transparent,
  );
}
