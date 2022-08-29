import 'package:flutter/material.dart';
import 'package:web_flutter/controllers/counter_controller.dart';
import 'package:get/get.dart';

class OtherPage extends StatelessWidget {
  final CounterController counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text("Page was clicked ${counterController.counter.value} times"),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Open other screen"),
        )
      ]),
    );
  }
}
