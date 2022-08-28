import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_flutter/controllers/counter_controller.dart';

class HomePage extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Clicks: ${counterController.counter.value}"),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {}, child: const Text("Open other screen"))
        ],
      ),
    );
  }
}
