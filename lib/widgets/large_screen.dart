import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(color: Colors.red),
        ),
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.blue,
            child: Center(
              child: Text("Large Screen"),
            ),
          ),
        ),
      ],
    );
  }
}
