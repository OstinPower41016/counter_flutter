import 'package:counter_app/controllers/counter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  CounterController c = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(c.count.toString())),
            const SizedBox(height: 8),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(onPressed: c.increment, child: const Text("Increment count")),
                const SizedBox(width: 10,),
                ElevatedButton(onPressed: c.decrement, child: const Text("Decrement count")),
              ],
            )
          ],
        ),
      ),
    );
  }

}
