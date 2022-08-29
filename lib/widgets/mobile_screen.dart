import 'package:flutter/material.dart';
import 'package:web_flutter/widgets/top_nav.dart';

class MobileScreen extends StatelessWidget {
  MobileScreen({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Mobile"),
      ),
    );
  }
}
